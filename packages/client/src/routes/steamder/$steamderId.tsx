import { useEffect } from 'react';
import { useTranslation } from 'react-i18next';
import AOS from 'aos';

import styled from 'styled-components';

import { createFileRoute, useParams } from '@tanstack/react-router'

import { useAuthStore, useWebSocketStore, useSteamderStore } from '@store';

import { getCookieValue } from '@core/utils/cookies';
import { BASE_URL } from '@core/environment';
import { SteamderPlayPage } from '@layouts/templates/SteamderPlay_page';
import { SteamderWinPage } from '@layouts/templates/SteamderWin_page';
import { SteamderWaitPage } from '@layouts/templates/SteamderWait_page';

import { useGetSteamder } from '@core/hooks/useGetSteamder';
import { useJoinSteamder } from '@core/hooks/useJoinSteamder';

import { HelmetWrapper } from '@layouts/wrappers/HelmetWrapper';
import { Loader } from '@ui/molecules';

import CoverImage from '@assets/images/steamderpage/cover.jpg';

export const Route = createFileRoute("/steamder/$steamderId")({
  component: Steamder
})

const StyledSection = styled.section`
    padding-top: 9px;
    padding-bottom: 27px;
    background-attachment: fixed;
    background-image: url(${CoverImage});
    background-size: cover;
    background-position: right;
    overflow-x: hidden;
    height: 60vh;
`;

function Steamder() {
  const { steamderId } = useParams({ from: '/steamder/$steamderId' });

  const { user, setUser, isAuthenticated } = useAuthStore();
  const { steamder, setSteamder } = useSteamderStore();
  const { connect } = useWebSocketStore.getState();
  const token = getCookieValue('token') as string;

  const joinMutation = useJoinSteamder(steamderId);
  const getSteamderMutation = useGetSteamder(steamderId);

  const { t } = useTranslation('global/titles');
  document.title = t('steamder');

  useEffect(() => {
    if (!isAuthenticated || !user) {
      localStorage.setItem('postLoginRedirect', '/steamder/' + steamderId);
      window.location.href = `${BASE_URL}/auth/steam`;
      return;
    }

    AOS.init();
    AOS.refresh();

    if (user.steamder) {
      getSteamderMutation.mutateAsync().then(steamder => {
        setSteamder({ ...steamder.data, swiped_games: [] });
        setUser({ ...user, steamder: steamder.data.id });
        connect(steamder.data.id, token);
      })
    } else {
      joinMutation.mutateAsync().then(steamder => {
        setSteamder({ ...steamder.data, swiped_games: [] });
        setUser({ ...user, steamder: steamder.data.id });
        connect(steamder.data.id, token);
      })
    }
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [ setSteamder ]);

  if (!steamder) return (
    <StyledSection>
      <Loader />
    </StyledSection>
  );

  return (<HelmetWrapper keyPrefix='steamder' noindex={true}>
      { !steamder && <Loader /> }
      { !steamder.started && <SteamderWaitPage /> }
      { steamder.complete && <SteamderWinPage /> }
      { (steamder.started && !steamder.complete) && <SteamderPlayPage /> }
    </HelmetWrapper>
  )
}