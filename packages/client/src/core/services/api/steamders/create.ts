import { getCookieValue } from "@core/utils/cookieUtils";
const BASE_URL = import.meta.env.VITE_BASE_URL;

export const createSteamder = async ({name, isPrivate}: { name: string, isPrivate: boolean }) => {
    const token = getCookieValue('token');
    const response = await fetch(`${BASE_URL}/steamder`, {
        headers: {
            'Authorization': 'Bearer ' + token,
            'Content-Type': 'application/json'
        },
        method: 'POST',
        credentials: "include",
        body: JSON.stringify({ name, isPrivate })
    })

    if (!response.ok) {
        const errorDetails = await response.json();
        throw new Error(`Erreur lors de la création de la Steamder: HTTP error! Status: ${response.status}`, { cause: errorDetails });
    }
    return response.json();
};