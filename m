Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE80369217
	for <lists+usrp-users@lfdr.de>; Fri, 23 Apr 2021 14:27:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2830A38401D
	for <lists+usrp-users@lfdr.de>; Fri, 23 Apr 2021 08:27:41 -0400 (EDT)
Received: from n6.nabble.com (n6.nabble.com [162.255.23.37])
	by mm2.emwd.com (Postfix) with ESMTP id 4813E383C9C
	for <usrp-users@lists.ettus.com>; Fri, 23 Apr 2021 08:26:51 -0400 (EDT)
Received: from n6.nabble.com (localhost [127.0.0.1])
	by n6.nabble.com (Postfix) with ESMTP id C057D1E78D522
	for <usrp-users@lists.ettus.com>; Fri, 23 Apr 2021 05:26:50 -0700 (MST)
From: margaux.bgd1@gmail.com
To: usrp-users@lists.ettus.com
Message-ID: <325916070.97754.1619180810755.JavaMail.administrator@n6.nabble.com>
MIME-Version: 1.0
Date: Fri, 23 Apr 2021 05:26:50 -0700 (MST)
Message-ID-Hash: JXVDWBIJRB5PDU543JL3V66RFNE6FKCA
X-Message-ID-Hash: JXVDWBIJRB5PDU543JL3V66RFNE6FKCA
X-MailFrom: margaux.bgd1@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Transmitter thanks to USRP E312 with high sample rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JXVDWBIJRB5PDU543JL3V66RFNE6FKCA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


>>> What is the procedure to create a transmitter with a sample rate of
>>> 61,44
>>> MHz with the USRP E312 ? I wonder if I am not limited by the sample data
>>> transfer rate of ARM processor.
>> 
>> As stated by Marcus, you are limited by the ARM processor.
>> 
>>> I want to use the USRP E312 to transmit a sequence, with IQ data,
>>> continuously
>> 
>> Do you mean a known fix sequence that you repeat continuously?
> 
> Yes I want to send the same sequence continuously all the time. 
> 
>> Does it need to be send continuously or periodically,
>> eg. sending the same preamble sequence every x ms?
> 
> I need to send continuously.

Then I only see two options:
 1. Build a custom RFNOC block that streams the sequence continuously.

I don't really understand how RFNOC works. Does it allow direct modification of the FPGA ? So I should use GNU radio to create a RFNOC block?

Thanks for your help.
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

</quote>
Quoted from: 
http://ettus.80997.x6.nabble.com/USRP-users-Re-Transmitter-thanks-to-USRP-E312-with-high-sample-rate-tp17079p17080.html


_____________________________________
Sent from http://ettus.80997.x6.nabble.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
