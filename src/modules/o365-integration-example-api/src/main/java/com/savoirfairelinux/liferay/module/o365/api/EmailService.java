/*
 * Copyright (c) 2019 Savoir-faire Linux Inc.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU LesserGeneral Public License as published by
 * the Free Software Foundation, either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU LesserGeneral Public License for more details.
 *
 * You should have received a copy of the GNU LesserGeneral Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

package com.savoirfairelinux.liferay.module.o365.api;

import com.savoirfairelinux.liferay.module.o365.core.api.AuthenticatedService;
import com.savoirfairelinux.liferay.module.o365.core.model.O365Authentication;

/**
 * Wrapper service to retrieve email data from Microsoft API
 */
public interface EmailService extends AuthenticatedService
{
	/**
	 * Get the number of unread mail in the user main inbox.
	 */
	int getNumberOfInboxUnreadMail(O365Authentication authentication);
}
