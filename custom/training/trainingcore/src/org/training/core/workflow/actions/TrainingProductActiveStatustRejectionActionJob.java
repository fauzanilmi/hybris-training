package org.training.core.workflow.actions;

import de.hybris.platform.workflow.model.WorkflowActionModel;
import de.hybris.platform.workflow.model.WorkflowDecisionModel;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class TrainingProductActiveStatustRejectionActionJob extends AbstractTrainingProductActiveStatusApprovalActionJob{


    private static final Logger LOGGER = LoggerFactory.getLogger(TrainingProductActiveStatustRejectionActionJob.class);

    @Override
    public WorkflowDecisionModel perform(final WorkflowActionModel action) {
        LOGGER.info("Entered into Training Product Active Status Rejection Action Job");
        return rejectProductAndFetchDecision(action);
    }


}
