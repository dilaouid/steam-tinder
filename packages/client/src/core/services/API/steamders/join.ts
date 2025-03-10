import { queryClient } from "@core";
import { getCookieValue } from "@core/utils/cookies";

import { BASE_URL } from '@core/environment';

export const joinSteamder = (steamderId: string) => {
    const token = getCookieValue('token');
    return fetch(`${BASE_URL}/steamder/${steamderId}`, {
        method: "PATCH",
        credentials: "include",
        headers: {
            Authorization: `Bearer ${token}`
        }
    }).then(response => {
        if (!response.ok)
            throw new Error("Impossible de rejoindre la Steamder");
        queryClient.invalidateQueries({ queryKey: ["steamders"] });
        return response.json();
    }).catch(err => {
        console.error("Erreur lors de la récupération du nombre de steamders :", err);
        throw new Error(err as string);
    });
}