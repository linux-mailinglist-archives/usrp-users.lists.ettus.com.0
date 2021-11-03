Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D750C4446CD
	for <lists+usrp-users@lfdr.de>; Wed,  3 Nov 2021 18:14:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D0A8A383DB5
	for <lists+usrp-users@lfdr.de>; Wed,  3 Nov 2021 13:14:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=erdc.dren.mil header.i=@erdc.dren.mil header.b="LYqeNp8+";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=erdc.dren.mil header.i=@erdc.dren.mil header.b="LNuO2ZCJ";
	dkim-atps=neutral
Received: from mfe.dren.mil (mfe.dren.mil [140.32.59.234])
	by mm2.emwd.com (Postfix) with ESMTPS id 9A9B33837DE
	for <usrp-users@lists.ettus.com>; Wed,  3 Nov 2021 13:14:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdc.dren.mil; h=from : to :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=s1.dkim; bh=iXBc8tr18x3Y7aVXE+G04M9TuTqyTmfjsf0bFV+/MA8=;
 b=LYqeNp8+Lk2GzA8zTsmjCIoEgZfhrFUuglu46Wy4WEi76vlr1EDax0ib709CtWEkJfeE
 +3GDsZrnALI6EmOWYeRKgpWDqwQBHYi7nOVvSLGO+hGnkuKE2zhB8Ur/IzovVTARl6Eq
 Giv2sEfIjuZqtKax1wizU5iiEYiG9BPXbGU=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdc.dren.mil; h=from : to :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=s2.dkim; bh=iXBc8tr18x3Y7aVXE+G04M9TuTqyTmfjsf0bFV+/MA8=;
 b=LNuO2ZCJK4WDs40EsqQUgFsfbdpT6X2HX88s8i80xWeueCwheF0nl74CcfgXN0q7QiY1
 R8uUta+YUC+i11w5Z+TWI0pZXYZZOSfDoKbBV+xpjOymniaUdCnPpKAiTMeQLP21w7mE
 yvlCVJW8xSBt5l2S3/vuUJcpoas7ruzi9zGgxxAvtePyfcIAjrhWa/SgncKau6FxiO9b
 Ctqn9Yh2TTZ8zZYAbBUE81+dl2H7PRJeDH6HyT6yD5WcS3QpCnuc6KOmX3RSp8iPBLKn
 N7Qqy+pURaaNWMNMBd4e3W6JCJDcwuVI+xv9zEafoHtXtwiMflpYE1+p+ZEVEvRBB4r9 mw==
Received: from rde-gw1.erdc.dren.mil (rde-gw1.erdc.dren.mil [134.164.23.110])
	by ppae.dren.mil (8.16.1.2/8.16.1.2) with ESMTPS id 1A3HE9dV016610
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Wed, 3 Nov 2021 17:14:09 GMT
X-IronPort-AV: E=Sophos;i="5.84,326,1620709200";
   d="scan'208";a="63733155"
Received: from unknown (HELO ERDC-EX2.erdc.dren.mil) ([134.164.254.14])
  by rde-gw1.erdc.dren.mil with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Nov 2021 12:14:10 -0500
Received: from ERDC-EX4.erdc.dren.mil (134.164.254.16) by
 ERDC-EX2.erdc.dren.mil (134.164.254.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.14; Wed, 3 Nov 2021 12:14:08 -0500
Received: from ERDC-EX1.erdc.dren.mil (134.164.254.13) by
 ERDC-EX4.erdc.dren.mil (134.164.254.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.14; Wed, 3 Nov 2021 12:14:08 -0500
Received: from ERDC-EX1.erdc.dren.mil ([fe80::8956:5285:1d33:5b6b]) by
 ERDC-EX1.erdc.dren.mil ([fe80::8956:5285:1d33:5b6b%6]) with mapi id
 15.01.2308.014; Wed, 3 Nov 2021 12:14:08 -0500
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: Problem with error_code_late_command using two x310's
Thread-Index: AdfQ0luKPW4Za/otQma2liYj5vsaqg==
Date: Wed, 3 Nov 2021 17:14:08 +0000
Message-ID: <97776b25089c4fec9a2cd5e9b4bf5d8c@erdc.dren.mil>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [134.164.254.60]
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Message-ID-Hash: YZ2U6FRLTBDHP6KCUBJRUFAH2XUIV72Z
X-Message-ID-Hash: YZ2U6FRLTBDHP6KCUBJRUFAH2XUIV72Z
X-MailFrom: Carl.L.Wolsieffer@erdc.dren.mil
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Problem with error_code_late_command using two x310's
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YZ2U6FRLTBDHP6KCUBJRUFAH2XUIV72Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV" <Carl.L.Wolsieffer@erdc.dren.mil>
Content-Transfer-Encoding: 7bit

Hello all,

I have 2 x310's, one is a transmitter and the other is a receiver. I have some code I adapted from a usrp example awhile back and in testing the bounds of my system, I am getting a ERROR_CODE_LATE_COMMAND warning after a few seconds when trying to receive every few ms and think I may be misinterpreting at least partially what my code is doing. I can run the code for up to 5,000ish loops so I'm guessing something is eventually losing ground somewhere and fails

It all operates out of one .cpp program and manages a send_from_file and recv_to_file thread.

I'm guessing the problem is on the receive side, and essentially the recv_to_file function goes something like this:

stream_cmd.num_sampes = num_requested_samples;
stream_cmd.stream_now = false;
stream_cmd.time_spec = uhd::time_spec_t( recv_time );
rx_stream->issue_stream_cmd( stream_cmd );

while (not stop_signal_called) {
	
	num_samples = rx_stream->recv( buffer_ptrs, sampls_per_buff, meta_data, timeout );

	total_num_samps = total_num_samps + num_samps;

	///// Receive for 20 us //////
	///// basically it's listening for a 20us long signal sent from transmitter (sent at "recv_time" as well)
	///// writes to outfile ////////
	///// check for errors ////////
	
	// end of transmitted file presumably reached
	If ( num_total_samples >= num_requested_samples) {
	
		num_total_samples = 0;
		
		recv_time = recv_time + delay; // increment delay by 1 ms have tried as high as 10 ms with no luck after about 10,000 loops or so
		stream_cmd.time_spec = uhd::tune_spec_t( recv_time );
		rx_stream->issue_stream_cmd( stream_cmd );
		
		for (size_t i=0; i< buffs.size(); i++) {
			buff_ptrs.push_back(&buffs[i].front());
		}
	}
}


I'm thinking it may just be an error in how I've interpreted the example code and repurposed it. I don't have a strong understanding of the difference between issue_stream_cmd() and recv() which could be part of the problem as well. This is a simplified version of the code to explain what's happening so please let me know if you need additional details


Thanks
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
