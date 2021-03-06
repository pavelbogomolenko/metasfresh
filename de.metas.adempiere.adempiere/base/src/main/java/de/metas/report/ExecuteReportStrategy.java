package de.metas.report;

import de.metas.adempiere.report.jasper.OutputType;
import de.metas.process.ProcessInfo;
import lombok.ToString;
import lombok.Value;

/*
 * #%L
 * de.metas.swat.base
 * %%
 * Copyright (C) 2018 metas GmbH
 * %%
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as
 * published by the Free Software Foundation, either version 2 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public
 * License along with this program. If not, see
 * <http://www.gnu.org/licenses/gpl-2.0.html>.
 * #L%
 */

/**
 * Implement this interface to a have a report process creating custom binary data.
 *
 * Common use case: a printformat needs to consist of the "actual" document plus further concatenated documents.
 * To achieve this, you can:
 *
 * <li>write a custom implementation of this interface</li>
 * <li>subclass {@link ReportStarter}</li>
 * <li>implement {@link ReportStarter#getExecuteReportStrategy()} to return your implementation</li>
 */
public interface ExecuteReportStrategy
{
	/**
	 * @return never return {@code null}.
	 */
	ExecuteReportResult executeReport(ProcessInfo processInfo, OutputType outputType);

	@Value
	@ToString(exclude = "reportData")
	public class ExecuteReportResult
	{
		OutputType outputType;

		byte[] reportData;
	}
}
