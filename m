Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 534B724C0BB
	for <lists+usrp-users@lfdr.de>; Thu, 20 Aug 2020 16:38:13 +0200 (CEST)
Received: from [::1] (port=41334 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k8lhf-0001iR-CS; Thu, 20 Aug 2020 10:38:07 -0400
Received: from kda-chqmg-03.kongsberg.com ([193.71.180.7]:42796)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Andreas.Bertheussen@kongsberg.com>)
 id 1k8lha-0001bU-UM
 for usrp-users@lists.ettus.com; Thu, 20 Aug 2020 10:38:03 -0400
Received: from pps.filterd (kda-chqmg-03.kongsberg.com [127.0.0.1])
 by kda-chqmg-03.kongsberg.com (8.16.0.42/8.16.0.42) with SMTP id
 07KEbLS6020967; Thu, 20 Aug 2020 16:37:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kongsberg.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=KDA1;
 bh=7SC9W6RX7GdRulQvDwv8ory1XCK3+HETwf7ELquxl3c=;
 b=HKu/TgEMAFK6WABx7ecBA8yay7rO17ISiqSQmwjEHVs3N/eFh2V4JHt+DvbpHaytNYsX
 nsqh8fxygcf8uMhYF49ZZ+hD9VYJ8ycq36iqBJ1GCXgOocz4NApHP+TNxCL+8tYdAV0C
 AAfEMHfpKMkbTpY0X+M6luNIqlrsTCfzKyI23FAkhV2mBj0D1qNBoRXn1tQSVjn93PCD
 7aJKy3D8IXPPJsT5jrImoIOdPMncCj3NkZ79iPxRc0I5lPw9NAX96iqTSVOSdWvxqjPp
 lCdZ1QXwRfT5uap6CQtVpk11sv8/fWTC9BxxbGgMaC4LPlz+m3gRUGRZcluhEz6+szuH JA== 
Received: from ukgw-exca4-p01.kda.kongsberg.com ([10.50.100.49])
 by kda-chqmg-03.kongsberg.com with ESMTP id 3302ufrhfm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=NOT);
 Thu, 20 Aug 2020 16:37:20 +0200
Received: from Ukgw-ExcK2-p01.kda.kongsberg.com (10.50.100.41) by
 Ukgw-ExcA4-p01.kda.kongsberg.com (10.50.100.49) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1913.5; Thu, 20 Aug 2020 16:37:20 +0200
Received: from Ukgw-ExcK2-p01.kda.kongsberg.com ([fe80::dc6d:7bfe:de2:ea24])
 by Ukgw-ExcK2-p01.kda.kongsberg.com ([fe80::dc6d:7bfe:de2:ea24%21]) with mapi
 id 15.01.1913.007; Thu, 20 Aug 2020 16:37:20 +0200
To: <rkossler@nd.edu>
CC: <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Issues with multi-usrp and UHD
Thread-Index: AdZ21mx1YVSRD/KTRva7GPuE0XgSxAADYcaAAAbWWUA=
Date: Thu, 20 Aug 2020 14:37:20 +0000
Message-ID: <a836f011bfdb46fb9403baafa0060800@kongsberg.com>
References: <7d8c7731d23c412490a27750fac617a9@kongsberg.com>
 <CAB__hTR_n5zEHbSNSADeV+euNu5m-Chb7agX5D+RhZo5LOK00Q@mail.gmail.com>
In-Reply-To: <CAB__hTR_n5zEHbSNSADeV+euNu5m-Chb7agX5D+RhZo5LOK00Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.73.0.10]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-08-20_03:2020-08-19,
 2020-08-20 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 clxscore=1015
 impostorscore=0 suspectscore=0 adultscore=0 mlxscore=0 phishscore=0
 mlxlogscore=999 lowpriorityscore=0 spamscore=0 priorityscore=1501
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2008200121
Subject: Re: [USRP-users] Issues with multi-usrp and UHD
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Andreas B via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andreas.Bertheussen@kongsberg.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

Thanks for that suggestion Rob,

I have tested this now, I now address both devices, I have changed subdev spec to "A:0 B:0" for both motherboards (lines 35, 36).
Then I tried several values for stream_args.channels:

I tried with stream_args.channels = (0,2). Here I expect signal on A outputs on both X310s. But I get the following two cases:
* The A and B outputs on the first X310 are enabled (TX LED), with signal visible on output, first channel mapped to A output and second channel mapped to B output.
* The A and B outputs on the second X310 are enabled (TX LED), with _no signal_ on output. Channel mapping can't be determined because there is no signal.

I tried with stream_args.channels = (1,3). Here I expect signal on B outputs on both X310s. But I get the following two cases:
* The A and B outputs on the first X310 are enabled (TX LED), with signal visible on output, first channel is mapped to B output and second channel mapped to A output. (Notice reversal of first and second channel)
* The A and B outputs on the second X310 are enabled (TX LED), with _no signal_ on output. Channel mapping can't be determined because there is no signal.

I tried with stream_args.channels = (2,3). Here I ecpect signal on A and B outputs on the second X310. But I get the following two cases:
* The B outputs on both X310 are enabled (TX LED), with signal only visible on the first X310. First channel mapped to B output on first X310.
* The A outputs on both X310 are enabled (TX LED), with signal only visible on the first X310. Second channel is mapped to A output on first X310.

There is some randomness as to which case happens, I have tested approx 10 runs of each.

It looks like what occurs is some shuffling around of the channels, so that the logical channel number (the indexes in the buffer array passed to send()) does not match up with the subdev specification.
Since some incorrect outputs get enabled, but with no signal, maybe that helps in understanding where in UHD this could occur.

In all these cases, I don't receive the error message I mentioned in my first mail, but the changing channel mapping is just as bad for what I'm trying to do.

Regards
Andreas

________________________________

CONFIDENTIALITY
This e-mail and any attachment contain KONGSBERG information which may be proprietary, confidential or subject to export regulations, and is only meant for the intended recipient(s). Any disclosure, copying, distribution or use is prohibited, if not otherwise explicitly agreed with KONGSBERG. If received in error, please delete it immediately from your system and notify the sender properly.
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
