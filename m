Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1E93CEE92
	for <lists+usrp-users@lfdr.de>; Mon, 19 Jul 2021 23:54:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AB9FA3849C1
	for <lists+usrp-users@lfdr.de>; Mon, 19 Jul 2021 17:54:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=boeing.com header.i=@boeing.com header.b="TFll31g/";
	dkim-atps=neutral
Received: from clt-mbsout-02.mbs.boeing.net (clt-mbsout-02.mbs.boeing.net [130.76.144.163])
	by mm2.emwd.com (Postfix) with ESMTPS id C6A4F3849AA
	for <usrp-users@lists.ettus.com>; Mon, 19 Jul 2021 17:54:00 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by clt-mbsout-02.mbs.boeing.net (8.15.2/8.15.2/DOWNSTREAM_MBSOUT) with SMTP id 16JLrxiq002109;
	Mon, 19 Jul 2021 17:54:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=boeing.com;
	s=boeing-s1912; t=1626731640;
	bh=n3ZcHBGYMFVwEG/5Dh0HCjiiMDXDY+/7HKgQVooN198=;
	h=From:To:CC:Subject:Date:From;
	b=TFll31g/bVqKmcqG82b0WNEYn0aHEuwVuTKOillDeRda8cLAilTSXlV5Ql4jiNUNk
	 reRwG8Q0lxTeqlVYnPIHzdfejPlaLx3HZk36grOwq9oxERp6hMn6QfLKfQP6cx7UEy
	 L4/fYMedVPjNijQ3reRKQ3mVqMqkwPwlb/nLFaZrlrijoDooPOVA2oWphPLZ1kiQrr
	 nwPY+Le9grBDSaO6ImIfoUMrV/aIrVuTVeNz1zWolhhTdmurftY+pj2dfgKcDRUUA2
	 cL0qe8LWkEFmfL9bFmWRzUpcnSztZEeHY5TfcljCKonIDLMIdNPY4wJXLp6svwClyN
	 Y2Dx8i7lHXhQw==
Received: from XCH16-05-11.nos.boeing.com (xch16-05-11.nos.boeing.com [144.115.66.95])
	by clt-mbsout-02.mbs.boeing.net (8.15.2/8.15.2/8.15.2/UPSTREAM_MBSOUT) with ESMTPS id 16JLrnY3002014
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 19 Jul 2021 17:53:49 -0400
Received: from XCH16-05-12.nos.boeing.com (144.115.66.96) by
 XCH16-05-11.nos.boeing.com (144.115.66.95) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Mon, 19 Jul 2021 14:53:48 -0700
Received: from XCH16-05-12.nos.boeing.com ([fe80::2853:a628:2b4e:d669]) by
 XCH16-05-12.nos.boeing.com ([fe80::2853:a628:2b4e:d669%11]) with mapi id
 15.01.2242.008; Mon, 19 Jul 2021 14:53:48 -0700
From: "Clark (US), Kenneth C" <kenneth.c.clark2@boeing.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Receive time delay through B205
Thread-Index: Add86CGedrJ8eiHdR6+VdqC3x0SLvQ==
Date: Mon, 19 Jul 2021 21:53:48 +0000
Message-ID: <a7981a6e44ae40baa330fd65bf4c26c3@boeing.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [144.115.204.6]
x-tm-snts-smtp: 30F440BF1EE5965EA46387A013A17C928D38661158C3B5BB3A8EDBC880C59FAA2000:8
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Message-ID-Hash: HQX3VHEEDMRWMJUYDZTO5VP356EWFXVS
X-Message-ID-Hash: HQX3VHEEDMRWMJUYDZTO5VP356EWFXVS
X-MailFrom: kenneth.c.clark2@boeing.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Clark (US), Kenneth C" <kenneth.c.clark2@boeing.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Receive time delay through B205
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HQX3VHEEDMRWMJUYDZTO5VP356EWFXVS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

How can I compute the receive time delay through the B205?

In particular, for a given baseband sampling rate, what is the time from when the RF hits the input SMA connector, to when I see it in the baseband I&Q samples, with the associated 1-PPS derived timestamp.  I am synching the B205 to a GPS receiver's 1-PPS signal.  I am just using the stock 'rx-samples-to-file' example software.  The main thing is probably the FIR filter in the DDC chain, right?

Thanks,

Ken Clark
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
