import { Row } from "react-bootstrap";
import { GameColumn } from "@features/molecules/Steamder/game/GameColumn";
import { ActionColumn } from "@features/molecules/Steamder/game/ActionColumn";

export const GameRow = () => {
    return (
        <Row className="g-0">
            <GameColumn />
            <ActionColumn />
        </Row>
    )
};