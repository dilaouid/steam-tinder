import { useContext } from "react";
import { useNavigate } from "react-router-dom";
import styled from "styled-components";

import { ArrowRepeatIcon } from "../components/common/Icons/ArrowRepeatIcon";
import { RoomContext } from "../context/RoomProvider";
import Player from "../components/common/Waiting/Player";
import { RoomInformations } from "../components/common/Waiting/RoomInformations";
import { RoomActionButtons } from "../components/common/Waiting/RoomActionButtons";
import { NotInCommonGames } from "../components/common/Waiting/NotInCommonGames";

const RoomID = styled.span`
    font-weight: normal !important;
`;

const WarningLabels = styled.div`
    font-size: 13px;
    font-style: italic;
    margin-top: 9px;
    text-align: center;
`;

export default function WaitingPage() {
    const { room } = useContext(RoomContext)!;
    const navigate = useNavigate();

    if (!room) {
        navigate('/')
        return <></>
    }

    return (
        <div className="container">
            <div className="text-center p-4 p-lg-5">
                <div>
                    <p className="fw-bold text-primary mb-2">
                        <ArrowRepeatIcon /> Room <i>Swipe2Choose</i> <br />
                        Room ID: <RoomID>{ room.id }</RoomID>
                    </p>
                </div>
            </div>
            <div className="row gy-1 justify-content-center">
                { room.players.map((player, index) => {
                    return <Player key={index} player={player} />
                }) }
            <RoomInformations />
            <RoomActionButtons />
            <WarningLabels>
                <NotInCommonGames />
            </WarningLabels>
        </div>
    </div>
    );
}