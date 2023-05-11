Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA556FF295
	for <lists+usrp-users@lfdr.de>; Thu, 11 May 2023 15:20:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B96A438472D
	for <lists+usrp-users@lfdr.de>; Thu, 11 May 2023 09:20:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683811253; bh=rJGzRymf2TcLGmC4fBLxcFvo6R4u4GbV7E2f5FIjcb4=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Ut5meKAA3wTGMFMTE4t0lMBWsMimQm0uBZn3zyMMb02j0Hp6p7JEWNAuG5lcHI9ES
	 vpxAIaW/ZzmfdtLWgUeW3CR6MmI5Bl/hZbwgGOU4mVkG/mLzVKjMOAL1RNrPZEu7VR
	 mWO0GCA7ygBBITPNCMTbYlP8bFQhf8SJpIAcXJoHwXmHrsgP7cOAVf88a0X23Cz9KZ
	 zzf8pbZTmbNnwRaJNAhPBDW/kT/xYmfBMNhQCcyZLxXN6g36YBWJr7R9P21e9oK2LQ
	 0A8Fv7aSmzHsz+yXjOJFDfuLZSWD+h21ZxQUQoyS7sOwLtgGOOJhrHnIe5H7AcFI1m
	 DW0KRMS+1Gv2A==
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (mail-am7eur03on2042.outbound.protection.outlook.com [40.107.105.42])
	by mm2.emwd.com (Postfix) with ESMTPS id C0254383C1F
	for <usrp-users@lists.ettus.com>; Thu, 11 May 2023 09:20:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=KULeuven.onmicrosoft.com header.i=@KULeuven.onmicrosoft.com header.b="PcRhRvb1";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QNGrAL/5GH12PmwvTJ295GQJLEA4dO+2GTO16zDnWO504GeHdCsWK2j0dTNVQ2kI8n6PlX1OmLGzZsRojBsUoNfRLa5rPQbM5FwRE7CGGRXEDNIsP25R4ESq1Ws0xypxQJtva2Kud/1nNbKGrG3EAYXjQdrtsZBYOrRQA4s+2edkcdB9IY3Mqtf0CNUHmYGmpEX/SCqXoV28VZMHwZFgnWcg3lR2Prer9SFxXZRysd9sd4N2x1WbSe4fEbmobQi7oGxqnNpQK4lIVCbW8t9RGjgVcbwlG5wiETwSUZmzV0QYy0z0OSjKLdQDak7dcpWRrep+wGiA4AJe6OXsuWchZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sOfy4K7lDb/Laiea7iHFLCzYWDlkH4mExjO4iOsjxDc=;
 b=IClK8trl7bt6+97VxzuKhwkecHOt/tHCmQH5U12temgJPnZA5SGpwOf9+N/HcKY0t6nNCt/pekUd1I3PG+bCmiJ+J3om85ONdbuBAqKEBUlBsiUJArsNcwwmhqgxHOrik7Ahiay/lG2dpIRheuSd3BZ3tAKymNDEs112qzeud8vu9kmCnC0bodc7690EONOmq+7Llsy7sG5Sncg9PGnAawlm2fJK+yAbmmrQgg/5Y7gnCQOp7qOremC2AJ+HmLQa45ek14A4N+btAcaK2X9JF+JgeYOIdksFROXpMIDSuTk5rXTRkWP8Gkjj4k41Gqmav+tHz4BoSjajTqrTB8xA3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=student.kuleuven.be; dmarc=pass action=none
 header.from=student.kuleuven.be; dkim=pass header.d=student.kuleuven.be;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=KULeuven.onmicrosoft.com; s=selector2-KULeuven-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sOfy4K7lDb/Laiea7iHFLCzYWDlkH4mExjO4iOsjxDc=;
 b=PcRhRvb1P5ZVnb1LEW3EzWZYgIY0rMjnJikIrpvOUINUbPglhjtUctN3FfzNvoGcYtQ6vNslDLdvEoPXeujWWn5N0oNqsnNlpI7mYV6M0bzB+dbUz0V/FupF0Yh/RYAyiMfSvxeUGqAHGsTgHer/PTuysXOLYBpFJFJ4/WZasuk=
Received: from AS8PR08MB8706.eurprd08.prod.outlook.com (2603:10a6:20b:564::12)
 by AS4PR08MB7760.eurprd08.prod.outlook.com (2603:10a6:20b:517::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.33; Thu, 11 May
 2023 13:20:11 +0000
Received: from AS8PR08MB8706.eurprd08.prod.outlook.com
 ([fe80::90ce:37c1:4bee:dcda]) by AS8PR08MB8706.eurprd08.prod.outlook.com
 ([fe80::90ce:37c1:4bee:dcda%3]) with mapi id 15.20.6363.033; Thu, 11 May 2023
 13:20:11 +0000
From: Roeland Osaer <roeland.osaer@student.kuleuven.be>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Issue with timed commands when initializing TX streamer
Thread-Index: AQHZhAtDmwy5D4FxdEm4DIPilwvTSA==
Date: Thu, 11 May 2023 13:20:10 +0000
Message-ID: 
 <AS8PR08MB87062FF6545E04DCB809C111B0749@AS8PR08MB8706.eurprd08.prod.outlook.com>
Accept-Language: nl-NL, en-US
Content-Language: nl-NL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=student.kuleuven.be;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR08MB8706:EE_|AS4PR08MB7760:EE_
x-ms-office365-filtering-correlation-id: 226426ae-a074-47c1-5d85-08db522272b4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 EP1I2cmv8scwVrF3kQIwD2jberoaRcxf4/4K3mVikgy71gyAW9hSvjTfNQ6AmeUSUezJW+VSloC4ooZK/Lt+PxUGGFBIJQLrn3amrMHUKzrTPlVvXASSESDviFWbl3kQpY/XSdBXAknCFtmDv4uKo/VYBja+/L6BI19ZRQz60vwDroq0ehUsj11aWc+bNHRwjtkMPeAk7TXmCOd/xKYYe+Uv8BThzNg6J3bEmXD5/gTJ1tWk7Q+Jd6A/K8R6/MW1XbQHZcqFYtLXZfou0ZgLPJEmJ5riBeGD6MmTaiVrBR/+Tgn0FXjHMfF/uHcrfEexI4zuk/9mT3gflA51F75U6rXJh8e3KJcbJaMtT2q/eYg=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR08MB8706.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(346002)(136003)(396003)(366004)(39860400002)(451199021)(55016003)(6916009)(786003)(316002)(8936002)(44832011)(558084003)(5660300002)(2906002)(8676002)(33656002)(52536014)(41300700001)(41320700001)(166002)(64756008)(6506007)(9686003)(19627405001)(966005)(7696005)(26005)(71200400001)(186003)(38100700002)(122000001)(38070700005)(86362001)(76116006)(478600001)(66446008)(91956017)(66946007)(66476007)(66556008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?ORIct5QBX4kvFPwPOxofpEs3HkVmGmX/Zy0uWIoQRlO58EgI8EeRCXFF3+?=
 =?iso-8859-1?Q?T/ZwaUUOExhn7P+L/E1QRwXwh78YLsW3U0hflZOQLpl9lqwAjZZAXas+KB?=
 =?iso-8859-1?Q?NSIahuFr34PX+UmQDIR/BED8oM6eW0N4bBIDUJBQwnZfLn4oJFgc5PpbIV?=
 =?iso-8859-1?Q?Zou8XuwqivAn/fRfLfMQW6w7QKoBypOjaIL1v+LE/6bZtdpZ25Q1W3Yc60?=
 =?iso-8859-1?Q?itP/d9CsaUhpXrN1MzMJtNp4m/smJ8RtUjGKIyfdBiwUPA+LGeb975YUXP?=
 =?iso-8859-1?Q?udMnLwnkECf+tLRCVUBOb24/+eoDyA1Xck5EeiyrUOleY/YNdauJ21kbPp?=
 =?iso-8859-1?Q?y8HBxR9PsnIhInWGUbBK9DMNT+nHwoKRuHpOb8DgF09eK7Bx2f6UkYj3lL?=
 =?iso-8859-1?Q?SHxHEyQEnk0qHtZedsZcHIF0+Iz40FzVsmkhjfiOhz8nG3YenPThnLMp6s?=
 =?iso-8859-1?Q?EusBOL0Pkhrrd6COnIYdayiVY1mKOfYCysLcpLYlYo24658AV+LXwOwShz?=
 =?iso-8859-1?Q?mhavrNMmvJTun+/fujOI0vYDanG6aW6onzvH/6uLfXU3kVbOWF1mhYDPP5?=
 =?iso-8859-1?Q?zO4+aeI+YqaQnWkBgt+VTt95r8TMQpWex/HmcbZUfCiozesxAdQR02p6K0?=
 =?iso-8859-1?Q?jpKIdEbMhnPO9Y2cGDs8A7E/1f4Zog4JL7WcYk8gvSLi8GBGs/oGpnB5yt?=
 =?iso-8859-1?Q?P+BqLGbPJHTOGsuAAfeH8wzhPOoAZx4YBmGAJ/RcuKqyyhPMvWrzSHCph3?=
 =?iso-8859-1?Q?NNEUzxYP3NK2K8WJ844jqJfxbSelQsWomKmLSAPpLPSYPK0tlIvtO1PLBL?=
 =?iso-8859-1?Q?iiyul4ApPJLTixO/y19MAhUKKmpfUjyqzgJI5SsqJhZwksjiQ1K/4QcY14?=
 =?iso-8859-1?Q?rukZO5l10Zz/fGeG3kz22hweVKnNfVPBTVfCAG+OJFgY3RERQERUTkBHyk?=
 =?iso-8859-1?Q?SjDsyX+RRVKykoudEBPXr5z+Nka5gdZsjNF3vnyIqMQLWOqn36vUGjCncI?=
 =?iso-8859-1?Q?Z8nj4SD1Sjv1DkeI0psYW++Vj0dZGsmpFww5nPRIwPwflQI/tbvFFoxVj+?=
 =?iso-8859-1?Q?ppYAl0Huc9pQHrZ6crk1xVGvxPTz1Y+4X7CY224NKjui76m4mtS8z/RIxp?=
 =?iso-8859-1?Q?2uuUlNEq8L6vUkcQ2kHPG7NKpqPvKGgVrScF51nwpxUGF892BzTr9+TCe+?=
 =?iso-8859-1?Q?L4VUGX6o+38/w+eSic4svl6K/M/mI+tIF7E+7ZnDj8LHM6kfyKlPwG3rQC?=
 =?iso-8859-1?Q?vym7B22gmsNU4GXtqaqxwa7IZ5OElHwMQntV4D+H9lSUfiXuHncGp0v4CP?=
 =?iso-8859-1?Q?4EsURDk0H8ZBMUVDcQ7pANXKNfNqRZxe5KXJelLxg9o8dmwtt4NFTjXpW7?=
 =?iso-8859-1?Q?27Psk86IcJqnQbcf3HfQzjvgcAvnzdgiWwvXdXfOM64aO1lFqp6peqVdhl?=
 =?iso-8859-1?Q?W+Md33hqVHQPWFEDYzORByhcfbQDuOvkm0rmXaCr7WglvPMeDjMhagM04M?=
 =?iso-8859-1?Q?66FD/DRdIbkLZNIXwbqhUWWmOvFZ880v/evFfVJDocd/SgHjMBMHJ5sVFA?=
 =?iso-8859-1?Q?NAtmXc4OQNKEsjhzDw+hPSiQyd5qn7m+8eisEbi9euKkyngEnTi+Q7BEmU?=
 =?iso-8859-1?Q?YdKP4Lh2dwOb2v0RQqAClMytuLObaJI5OAKlEEu5EYiUb4PW3xCNePLQ?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: student.kuleuven.be
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR08MB8706.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 226426ae-a074-47c1-5d85-08db522272b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2023 13:20:10.9560
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3973589b-9e40-4eb5-800e-b0b6383d1621
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QNIDFSsRHdM6wr90iLoiAt1xrtjACbsuaOwoZOAA/aol4UulmpT2NR5AZBI7B79KcKxvYKS8vImsnq8ArYfdEbzNQ5pKboRNqMTqlV67iUWWV2ppIIG6wOeT7Oveg5GG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR08MB7760
Message-ID-Hash: GYQL45F2ZGXJITHM56FQNU2YQKOC3A72
X-Message-ID-Hash: GYQL45F2ZGXJITHM56FQNU2YQKOC3A72
X-MailFrom: roeland.osaer@student.kuleuven.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Issue with timed commands when initializing TX streamer
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RFOTQBH5KAQ72ENSRNUQ62PXUVCQILGQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7234012755912147386=="

--===============7234012755912147386==
Content-Language: nl-NL
Content-Type: multipart/alternative;
	boundary="_000_AS8PR08MB87062FF6545E04DCB809C111B0749AS8PR08MB8706eurp_"

--_000_AS8PR08MB87062FF6545E04DCB809C111B0749AS8PR08MB8706eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

https://github.com/EttusResearch/uhd/issues/678#issue-1705798760

--_000_AS8PR08MB87062FF6545E04DCB809C111B0749AS8PR08MB8706eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
<a href=3D"https://github.com/EttusResearch/uhd/issues/678#issue-1705798760=
" id=3D"LPlnk724355">https://github.com/EttusResearch/uhd/issues/678#issue-=
1705798760</a><br>
</div>
</body>
</html>

--_000_AS8PR08MB87062FF6545E04DCB809C111B0749AS8PR08MB8706eurp_--

--===============7234012755912147386==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7234012755912147386==--
