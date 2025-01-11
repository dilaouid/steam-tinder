import React from "react";
import styled from "styled-components";

import { Row } from "react-bootstrap";
import { WinnerColumn } from "@features/molecules/Steamder/end/WinnerColumn";
import { ShopPageColumn } from "@features/molecules/Steamder/end/ShopPageColumn";

const StyledRow = styled(Row)`
    margin-bottom: 17px;
`;

interface GameWinRowProps {
    printShop: boolean;
}

export const GameWinRow: React.FC<GameWinRowProps> = ({ printShop }) => {
    return (
        <StyledRow>
            <WinnerColumn />
            { printShop && <ShopPageColumn /> }
        </StyledRow>
    )
};