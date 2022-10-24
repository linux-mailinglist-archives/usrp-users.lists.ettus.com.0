Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3C960B5F1
	for <lists+usrp-users@lfdr.de>; Mon, 24 Oct 2022 20:44:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CA2EF383BEC
	for <lists+usrp-users@lfdr.de>; Mon, 24 Oct 2022 14:44:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666637079; bh=c3jIKQd9bVN8CVyooCvKuB4JCw1dRdmuRjQufv0DOaY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=sLoaHklDnLO6tv58GvjLMmjcTZX8Hp4VsjQfoa/W7rGB7pKnL8Wojcc79uusBV65o
	 g9FZS9nEPRAIQL9lcS9e/EMoOnV8BQFkIHH43UNAYrLVXlsTCEx3ITxKM2M2kVqshU
	 MOFwL+QOKr9X48rWDNCW7zyO9M6I0CjagbiemIIp3X9oQHnkOw5glIYkMOQb6D9GrF
	 GvzTuU+eFBSFmOfyS0Tt5F3EJcPLSL9tENBU8BzUooYuUw+YviDNtgXHYNDydxDO4Y
	 Jgutg8wlwMg54OnfFQojNZ/26HspuO4HXBLqhKVP2ZKI+0I0hEesw22lpXQD4ei/CW
	 2g9XPqrKYw74w==
Received: from USG02-CY1-obe.outbound.protection.office365.us (mail-cy1usg02on0092.outbound.protection.office365.us [23.103.209.92])
	by mm2.emwd.com (Postfix) with ESMTPS id EA30C383064
	for <usrp-users@lists.ettus.com>; Mon, 24 Oct 2022 14:43:24 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=WFyLSNOcyT+XOWvPlptcwCNQIRKQpgmczmasLBFFN1tU5XDIQIVtb4vMafWGIi9l7mb2T2QPTMRYtkMmWmP1KJ2iRYi7eYEJhc8ZoAp5f3YjbetdTle23MJvkPvFz3oj1FZhLJ8tyk5LdwgT6LynXawDBn1JkUhwU2Nt+I/46H8QqVe7P2Zq7BQpbsutiz7yDsD7pXdDnJWHFbJcVWqnDaA7nQ+kbFqiW7kso9rwUeEHKDaP9LxCOMV4W8cf7sH6UEGTAqhkT4QHBAF8PWHkaH3Ts5RITMzefb6y14D9LVrN+hpu/44wsH78zj0MVY5/ei8lzhs3Js1next1NMuRXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R1Ewdb4zDeg8kJG7UknqL9pe3UiEJUTqTuGj7ykPttE=;
 b=JMxJPkeKVgZ9RoKbjmt8H6ZwXx1WMwp50zg43f72SM78LLaXNNtu+pHXSTJvOPwzoKB3p4Nxg+gtSLT0/34tb65QnC+3Q9n79jWBZzCksi3ajJdGGAJJvtew6RdfxeL+djOYmDiZPCxBSlRQXlzrf5WVhUrYoeuZ0k7UddwKJ5gKbrh5GdsdGdx5EkEKZ9rxSb90zWNlrmiPv8gcNWJxg8M/+k7aQey3X4cdNgE/YZsiE9heCtSnn9MCJMYzXT6Yhn664CGPOIq4KZ+F1naAJeke+xSq7gNXpWngXfLZP0vJleVbaIcj0msLbjffQ9hfTbM7zGpvx9d9R6BZQPfatw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=riversideresearch.org; dmarc=pass action=none
 header.from=riversideresearch.org; dkim=pass header.d=riversideresearch.org;
 arc=none
Received: from BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:16f::9)
 by BN0P110MB1000.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:16c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.21; Mon, 24 Oct
 2022 18:43:20 +0000
Received: from BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
 ([fe80::318e:447d:1515:9ced]) by BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
 ([fe80::318e:447d:1515:9ced%3]) with mapi id 15.20.5746.023; Mon, 24 Oct 2022
 18:43:20 +0000
From: "White, Joshua J" <jjwhite@RiversideResearch.org>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: MPM compat number mismatch error with E312
Thread-Index: Adjnx4WRNg87iq56Qzy9qXszXdc6SgADE3wAAAAn8hAAACJDAAAA3ctA
Date: Mon, 24 Oct 2022 18:43:20 +0000
Message-ID: 
 <BN0P110MB1015656206E11898E25D522CB12E9@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
References: 
 <BN0P110MB1015C5E6363AAD78C7D303A7B12E9@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
 <2417c33c-83d2-0cff-85c7-c34bab60c85b@gmail.com>
 <BN0P110MB1015F22E32FF8751559CC6F2B12E9@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
 <83daad56-0ef9-32d0-2760-902138dd9a48@gmail.com>
In-Reply-To: <83daad56-0ef9-32d0-2760-902138dd9a48@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=RiversideResearch.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN0P110MB1015:EE_|BN0P110MB1000:EE_
x-ms-office365-filtering-correlation-id: 898eff29-45df-4ba1-b54e-08dab5ef9f90
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 W5CTINQy5nREzDLzs+w3LLKNNe61ahawmWDd1tn39AkNYFOTxUhNDr8/yjhTG4I3FxlONw2Tu63XaSpl6a/EZ6+qGrVIeZBcKpVHjJnCEpfCezoky6d4sYJAglTRpeqchMOFN4B9YuJW28cql+80fiRPhP8Yuue0akokYqTHvFrXpihO+cKMx0ajlrq0ewGhGev+31zMgcfSOchbii8bxGTS/cMhk7K3ggX5yyNEARAyJFfNOCmgCdg7oo9vPdoZ2r7FT+O/cqvPegs+g9gMZxkYGyVCh0P90mW6A9CZ6l9mNAeJpAGeH6AQZFiptcPdszc37E6CXweVJTXVNq6djbhDhIiXzD5H6PhUuYpIkjHdxh47AydXQHkzCD3mg7J2yZWByzK0imZuhrSP0kn1JXk7jnW6gEeHcszZ2UkXeRAq91SFk86CiVXta2a0pSgm2PVRxo/w3JGOOdOOJPdSxbvMH0E7tkCdBGXvyjZep5JKI+Tx8NWhoTsmNt0aqzAi4YJ6VuI8k7xhsXxC6Da+5oyURlmKmGFeGn11p8kkE6nqoUaKrkkp/rq7QGmQzfK+Xe+bTpSaub6YH+9spVHXv0B6e6IXRrJzJBJHMEmfFnlgLGM4zZMpNanZyxT0/NGhE306yzm2uhSSer6SGjMpxtVUGFfIxRy1Q+tEV8Aa/uMFog1RotVLZ3fgA0ojHKO5HN/XTokZo/breu1/gk3gGoYYzomJhcj2ttB9j4pJ8g4=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(366004)(451199015)(7696005)(9686003)(76116006)(52536014)(6506007)(53546011)(26005)(110136005)(40140700001)(38070700005)(33656002)(4001150100001)(66556008)(66446008)(64756008)(66476007)(86362001)(8676002)(66946007)(8936002)(5660300002)(2906002)(166002)(99936003)(498600001)(122000001)(966005)(83380400001)(55016003)(82960400001)(38100700002)(186003)(71200400001)(85282002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 v03PF+8gHY8Kdn21bpjy8KspSPypGJQZAeN9K27ICFsx4FwHpZZ+MFHtn0FeP7MgHfyAEBTMgxNiSY8C0HnRD7gKHduhQDdccH8ZTWNAIjtLks9Nc9Ksu7diqKYi1NccGhwBUNPDbGZSuPZIlAYRhOavOlV83nJID6UNMDhFggU8vJ9L0k9p3BeaP0yzu7zCUf3G0+KXLuf7zQviOQeJ8NFF+CM4AdG22LX9sJDgXG8UcxrSaLjNtftYAwqvjW6sTtD94gqYioPzrOjddkRCXMIn+oNCXt/KT9OWJep9wwRx2GYfn8E/glB5nvaBz/DncYw/T5Ze9eTEn3kTT82jy0kTCu2f5fhxlabgzH83yNWkH31wIJTJuLEGrpobTMJ84i7mLYoDCFDm3L/EiiLSinIYxu3THM07DjlxkNQJHnI=
MIME-Version: 1.0
X-OriginatorOrg: riversideresearch.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 898eff29-45df-4ba1-b54e-08dab5ef9f90
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2022 18:43:20.4593
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bfc64a8d-9064-4c64-91c3-9d10b44c1cb6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB1000
Message-ID-Hash: GORI223N6RDIFS3H446RPZ5FRRSDRLHR
X-Message-ID-Hash: GORI223N6RDIFS3H446RPZ5FRRSDRLHR
X-MailFrom: jjwhite@RiversideResearch.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: MPM compat number mismatch error with E312
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P5557PDYB7PYYHLQVGNNJ6IYZA2TSFI4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0408975050803187196=="

--===============0408975050803187196==
Content-Language: en-US
Content-Type: multipart/signed;
	protocol="application/x-pkcs7-signature";
	micalg=SHA1;
	boundary="----=_NextPart_000_00AC_01D8E7B6.F4E54580"

------=_NextPart_000_00AC_01D8E7B6.F4E54580
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_00AD_01D8E7B6.F4E54580"


------=_NextPart_001_00AD_01D8E7B6.F4E54580
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: 7bit

How should I go about fixing it?



Very respectfully,



Joshua White

Precision Timing Systems Engineer

Engineering & Support Solutions Directorate

 <http://www.riversideresearch.org/> www.riversideresearch.org

T: 937.986.3153 | F: 937.431.3811



This e-mail message, including any attachments, is for the sole use of the 
intended recipient(s) and may contain proprietary, confidential or privileged 
information or otherwise be protected by law. Any unauthorized review, use, 
disclosure or distribution is prohibited. If you are not the intended 
recipient, please notify the sender and destroy all copies and the original 
message.



From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Monday, October 24, 2022 2:18 PM
To: White, Joshua J <jjwhite@RiversideResearch.org>; 
usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Re: MPM compat number mismatch error with E312



On 2022-10-24 14:14, White, Joshua J wrote:

Marcus,



This is the response I get from it.



root@ni-e31x-3248EB5:~# uhd_config_info --version

UHD 4.3.0.0-0-g1f8fd345



Very respectfully,



Joshua White

Precision Timing Systems Engineer

Engineering & Support Solutions Directorate

 <http://www.riversideresearch.org/> www.riversideresearch.org

T: 937.986.3153 | F: 937.431.3811

Thanks.

This looks like a possible packaging error, then.









This e-mail message, including any attachments, is for the sole use of the 
intended recipient(s) and may contain proprietary, confidential or privileged 
information or otherwise be protected by law. Any unauthorized review, use, 
disclosure or distribution is prohibited. If you are not the intended 
recipient, please notify the sender and destroy all copies and the original 
message.



From: Marcus D. Leech  <mailto:patchvonbraun@gmail.com> 
<patchvonbraun@gmail.com>
Sent: Monday, October 24, 2022 2:10 PM
To: usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: MPM compat number mismatch error with E312



On 2022-10-24 12:55, White, Joshua J wrote:

All,



My company recently purchased an E312, which I have been attempting to set up 
and test. I have UHD 4.3.0.0-6-g5aa6bc44 on my host PC and downloaded and 
flashed the most recent sdimg from 
https://files.ettus.com/binaries/cache/e3xx/ onto the E312, which is UHD 
4.3.0.0-0-g1f8fd345. Running uhd_usrp_probe on the E312 itself over an SSH 
connection works as expected, but when I try to run uhd_usrp_probe from the 
host PC, I get the following error:

jjwhite@5cd01378zc:~$ uhd_usrp_probe

[INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400; 
UHD_4.3.0.0-6-g5aa6bc44

[INFO] [MPMD] Initializing 1 device(s) in parallel with args: 
mgmt_addr=192.168.1.174,type=e3xx,product=e310_sg3,serial=3248EB5,name=ni-e31x-3248EB5,fpga=n/a,claimed=False,addr=192.168.1.174

[INFO] [MPM.main] Launching USRP/MPM, version: 4.3.0.0-g1f8fd345

[INFO] [MPM.main] Spawning RPC process...

[WARNING] [MPM.PeriphManager] Skipping HW/SW compatibility check!

[INFO] [MPM.PeriphManager] Device serial number: 3248EB5

[WARNING] [MPM.PeriphManager] Found more EEPROM paths than daughterboards. 
Ignoring some of them.

[INFO] [MPM.RPCServer] RPC server ready!

[INFO] [MPM.RPCServer] Spawning watchdog task...

[ERROR] [MPMD] MPM minor compat number mismatch. Expected: 4.3 Actual: 4.2. 
Please update the version of MPM on your USRP device.

Error: RuntimeError: MPM minor compat number mismatch. Expected: 4.3 Actual: 
4.2. Please update the version of MPM on your USRP device.



Thinking it might be related to the FPGA image, I attempted to update it using 
uhd_image_loader, which produced a similar error:

jjwhite@5cd01378zc:~$ uhd_image_loader --args type=e3xx,addr=192.168.1.174

[INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400; 
UHD_4.3.0.0-6-g5aa6bc44

[INFO] [MPMD] Initializing 1 device(s) in parallel with args: 
mgmt_addr=192.168.1.174,type=e3xx,product=e310_sg3,serial=3248EB5,name=ni-e31x-3248EB5,fpga=n/a,claimed=False,skip_init=1

[INFO] [MPMD] Claimed device without full initialization.

[INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.

[INFO] [MPM.PeriphManager] Installing component `fpga'

[INFO] [MPM.PeriphManager] Installing component `dts'

[INFO] [MPMD IMAGE LOADER] Update component function succeeded.

[INFO] [MPM.RPCServer] Resetting peripheral manager.

[WARNING] [MPM.PeriphManager] Skipping HW/SW compatibility check!

[INFO] [MPM.PeriphManager] Device serial number: 3248EB5

[WARNING] [MPM.PeriphManager] Found more EEPROM paths than daughterboards. 
Ignoring some of them.

[INFO] [MPMD] Initializing 1 device(s) in parallel with args: 
mgmt_addr=192.168.1.174,type=e3xx,product=e310_sg3,serial=3248EB5,name=ni-e31x-3248EB5,fpga=n/a,claimed=False,addr=192.168.1.174,find_all=1

[WARNING] [MPM.PeriphManager] Cannot run deinit(), device was never fully 
initialized!

[ERROR] [MPMD] MPM minor compat number mismatch. Expected: 4.3 Actual: 4.2. 
Please update the version of MPM on your USRP device.

Error: RuntimeError: MPM minor compat number mismatch. Expected: 4.3 Actual: 
4.2. Please update the version of MPM on your USRP device.



Is there a reason that my host PC thinks the E312 has MPM v.4.2 installed 
instead of 4.3? Does the UHD 4.3 image for the E312 come with MPM 4.2? If so, 
is there a way to update it? Is there some other reason for the error, and if 
so, is there a way to correct it? Thank you in advance for your time and 
assistance.



Very respectfully,

Josh:

Could you get on to the E312 itself, and:

uhd_config_info --version

And share with us what it says?




------=_NextPart_001_00AD_01D8E7B6.F4E54580
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:"Yu Gothic";
	panose-1:2 11 4 0 0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@Yu Gothic";
	panose-1:2 11 4 0 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3Dpurple style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal>How should I go about fixing =
it?<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Very =
respectfully,<o:p></o:p></span></p><p class=3DMsoNormal><b><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></b></p><p =
class=3DMsoNormal><b><span style=3D'color:#1F497D'>Joshua =
White<o:p></o:p></span></b></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Precision Timing Systems =
Engineer<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Engineering &amp; Support Solutions =
Directorate<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><a =
href=3D"http://www.riversideresearch.org/"><span =
style=3D'color:blue'>www.riversideresearch.org</span></a> =
<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>T: 937.986.3153 | F: =
937.431.3811<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:9.0pt;color:#1F497D'>This =
e-mail message, including any attachments, is for the sole use of the =
intended recipient(s) and may contain proprietary, confidential or =
privileged information or otherwise be protected by law. Any =
unauthorized review, use, disclosure or distribution is prohibited. If =
you are not the intended recipient, please notify the sender and destroy =
all copies and the original message.</span><span =
style=3D'color:#1F497D'><o:p></o:p></span></p></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b>From:</b> Marcus D. Leech =
&lt;patchvonbraun@gmail.com&gt; <br><b>Sent:</b> Monday, October 24, =
2022 2:18 PM<br><b>To:</b> White, Joshua J =
&lt;jjwhite@RiversideResearch.org&gt;; =
usrp-users@lists.ettus.com<br><b>Subject:</b> Re: [USRP-users] Re: MPM =
compat number mismatch error with E312<o:p></o:p></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal>On =
2022-10-24 14:14, White, Joshua J wrote:<o:p></o:p></p></div><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><p =
class=3DMsoNormal>Marcus,<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><p class=3DMsoNormal>This is the =
response I get from it.<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><p =
class=3DMsoNormal>root@ni-e31x-3248EB5:~# uhd_config_info =
--version<o:p></o:p></p><p class=3DMsoNormal>UHD =
4.3.0.0-0-g1f8fd345<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><div><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Very respectfully,</span><o:p></o:p></p><p =
class=3DMsoNormal><b><span =
style=3D'color:#1F497D'>&nbsp;</span></b><o:p></o:p></p><p =
class=3DMsoNormal><b><span style=3D'color:#1F497D'>Joshua =
White</span></b><o:p></o:p></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Precision Timing Systems =
Engineer</span><o:p></o:p></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Engineering &amp; Support Solutions =
Directorate</span><o:p></o:p></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><a =
href=3D"http://www.riversideresearch.org/"><span =
style=3D'color:blue'>www.riversideresearch.org</span></a> =
</span><o:p></o:p></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>T: 937.986.3153 | F: =
937.431.3811</span><o:p></o:p></p></div></blockquote><p =
class=3DMsoNormal>Thanks.<br><br>This looks like a possible packaging =
error, then.<br><br><br><br><br><br><o:p></o:p></p><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><div><p =
class=3DMsoNormal><span =
style=3D'color:black'>&nbsp;</span><o:p></o:p></p><p =
class=3DMsoNormal><span style=3D'font-size:9.0pt;color:#1F497D'>This =
e-mail message, including any attachments, is for the sole use of the =
intended recipient(s) and may contain proprietary, confidential or =
privileged information or otherwise be protected by law. Any =
unauthorized review, use, disclosure or distribution is prohibited. If =
you are not the intended recipient, please notify the sender and destroy =
all copies and the original message.</span><o:p></o:p></p></div><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b>From:</b> Marcus D. Leech <a =
href=3D"mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</=
a> <br><b>Sent:</b> Monday, October 24, 2022 2:10 PM<br><b>To:</b> <a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
<br><b>Subject:</b> [USRP-users] Re: MPM compat number mismatch error =
with E312<o:p></o:p></p></div></div><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><div><p class=3DMsoNormal>On =
2022-10-24 12:55, White, Joshua J wrote:<o:p></o:p></p></div><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><p =
class=3DMsoNormal>All,<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><p class=3DMsoNormal>My company =
recently purchased an E312, which I have been attempting to set up and =
test. I have UHD 4.3.0.0-6-g5aa6bc44 on my host PC and downloaded and =
flashed the most recent sdimg from <a =
href=3D"https://files.ettus.com/binaries/cache/e3xx/">https://files.ettus=
.com/binaries/cache/e3xx/</a> onto the E312, which is UHD =
4.3.0.0-0-g1f8fd345. Running uhd_usrp_probe on the E312 itself over an =
SSH connection works as expected, but when I try to run uhd_usrp_probe =
from the host PC, I get the following =
error:<br><br>jjwhite@5cd01378zc:~$ uhd_usrp_probe<o:p></o:p></p><p =
class=3DMsoNormal>[INFO] [UHD] linux; GNU C++ version 11.2.0; =
Boost_107400; UHD_4.3.0.0-6-g5aa6bc44<o:p></o:p></p><p =
class=3DMsoNormal>[INFO] [MPMD] Initializing 1 device(s) in parallel =
with args: =
mgmt_addr=3D192.168.1.174,type=3De3xx,product=3De310_sg3,serial=3D3248EB5=
,name=3Dni-e31x-3248EB5,fpga=3Dn/a,claimed=3DFalse,addr=3D192.168.1.174<o=
:p></o:p></p><p class=3DMsoNormal>[INFO] [MPM.main] Launching USRP/MPM, =
version: 4.3.0.0-g1f8fd345<o:p></o:p></p><p class=3DMsoNormal>[INFO] =
[MPM.main] Spawning RPC process...<o:p></o:p></p><p =
class=3DMsoNormal>[WARNING] [MPM.PeriphManager] Skipping HW/SW =
compatibility check!<o:p></o:p></p><p class=3DMsoNormal>[INFO] =
[MPM.PeriphManager] Device serial number: 3248EB5<o:p></o:p></p><p =
class=3DMsoNormal>[WARNING] [MPM.PeriphManager] Found more EEPROM paths =
than daughterboards. Ignoring some of them.<o:p></o:p></p><p =
class=3DMsoNormal>[INFO] [MPM.RPCServer] RPC server =
ready!<o:p></o:p></p><p class=3DMsoNormal>[INFO] [MPM.RPCServer] =
Spawning watchdog task...<o:p></o:p></p><p class=3DMsoNormal>[ERROR] =
[MPMD] MPM minor compat number mismatch. Expected: 4.3 Actual: 4.2. =
Please update the version of MPM on your USRP device.<o:p></o:p></p><p =
class=3DMsoNormal>Error: RuntimeError: MPM minor compat number mismatch. =
Expected: 4.3 Actual: 4.2. Please update the version of MPM on your USRP =
device.<o:p></o:p></p><p class=3DMsoNormal>&nbsp;<o:p></o:p></p><p =
class=3DMsoNormal>Thinking it might be related to the FPGA image, I =
attempted to update it using uhd_image_loader, which produced a similar =
error:<br><br>jjwhite@5cd01378zc:~$ uhd_image_loader --args =
type=3De3xx,addr=3D192.168.1.174<o:p></o:p></p><p =
class=3DMsoNormal>[INFO] [UHD] linux; GNU C++ version 11.2.0; =
Boost_107400; UHD_4.3.0.0-6-g5aa6bc44<o:p></o:p></p><p =
class=3DMsoNormal>[INFO] [MPMD] Initializing 1 device(s) in parallel =
with args: =
mgmt_addr=3D192.168.1.174,type=3De3xx,product=3De310_sg3,serial=3D3248EB5=
,name=3Dni-e31x-3248EB5,fpga=3Dn/a,claimed=3DFalse,skip_init=3D1<o:p></o:=
p></p><p class=3DMsoNormal>[INFO] [MPMD] Claimed device without full =
initialization.<o:p></o:p></p><p class=3DMsoNormal>[INFO] [MPMD IMAGE =
LOADER] Starting update. This may take a while.<o:p></o:p></p><p =
class=3DMsoNormal>[INFO] [MPM.PeriphManager] Installing component =
`fpga'<o:p></o:p></p><p class=3DMsoNormal>[INFO] [MPM.PeriphManager] =
Installing component `dts'<o:p></o:p></p><p class=3DMsoNormal>[INFO] =
[MPMD IMAGE LOADER] Update component function =
succeeded.<o:p></o:p></p><p class=3DMsoNormal>[INFO] [MPM.RPCServer] =
Resetting peripheral manager.<o:p></o:p></p><p =
class=3DMsoNormal>[WARNING] [MPM.PeriphManager] Skipping HW/SW =
compatibility check!<o:p></o:p></p><p class=3DMsoNormal>[INFO] =
[MPM.PeriphManager] Device serial number: 3248EB5<o:p></o:p></p><p =
class=3DMsoNormal>[WARNING] [MPM.PeriphManager] Found more EEPROM paths =
than daughterboards. Ignoring some of them.<o:p></o:p></p><p =
class=3DMsoNormal>[INFO] [MPMD] Initializing 1 device(s) in parallel =
with args: =
mgmt_addr=3D192.168.1.174,type=3De3xx,product=3De310_sg3,serial=3D3248EB5=
,name=3Dni-e31x-3248EB5,fpga=3Dn/a,claimed=3DFalse,addr=3D192.168.1.174,f=
ind_all=3D1<o:p></o:p></p><p class=3DMsoNormal>[WARNING] =
[MPM.PeriphManager] Cannot run deinit(), device was never fully =
initialized!<o:p></o:p></p><p class=3DMsoNormal>[ERROR] [MPMD] MPM minor =
compat number mismatch. Expected: 4.3 Actual: 4.2. Please update the =
version of MPM on your USRP device.<o:p></o:p></p><p =
class=3DMsoNormal>Error: RuntimeError: MPM minor compat number mismatch. =
Expected: 4.3 Actual: 4.2. Please update the version of MPM on your USRP =
device.<o:p></o:p></p><p class=3DMsoNormal>&nbsp;<o:p></o:p></p><p =
class=3DMsoNormal>Is there a reason that my host PC thinks the E312 has =
MPM v.4.2 installed instead of 4.3? Does the UHD 4.3 image for the E312 =
come with MPM 4.2? If so, is there a way to update it? Is there some =
other reason for the error, and if so, is there a way to correct it? =
Thank you in advance for your time and assistance.<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><p class=3DMsoNormal>Very =
respectfully,<o:p></o:p></p></blockquote><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'>Josh:<br><br>Could you get on to the E312 =
itself, and:<br><br>uhd_config_info --version<br><br>And share with us =
what it says?<o:p></o:p></p></blockquote><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_001_00AD_01D8E7B6.F4E54580--

------=_NextPart_000_00AC_01D8E7B6.F4E54580
Content-Type: application/pkcs7-signature;
	name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
	filename="smime.p7s"

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
y5hBglp6x595DCG05IgGyQRzP9bNyqPglQMRekuqNtiM8s/BZZ0LiVtMDkna9k9jj28wggbAMIIF
qKADAgECAhMsAAP4qhx1+DitimPYAAcAA/iqMA0GCSqGSIb3DQEBCwUAMEExEzARBgoJkiaJk/Is
ZAEZFgNvcmcxFzAVBgoJkiaJk/IsZAEZFgdycmktdXNhMREwDwYDVQQDEwhCUk8tRFMwMjAeFw0y
MTA3MjExNjI2MzhaFw0yMzEyMjcxNzIyNDFaMIGsMRMwEQYKCZImiZPyLGQBGRYDb3JnMRcwFQYK
CZImiZPyLGQBGRYHcnJpLXVzYTEMMAoGA1UECxMDRFJDMQ4wDAYDVQQLEwVVc2VyczEWMBQGA1UE
CxMNT24tU2l0ZSBVc2VyczEYMBYGA1UEAxMPV2hpdGUsIEpvc2h1YSBKMSwwKgYJKoZIhvcNAQkB
Fh1qandoaXRlQFJpdmVyc2lkZVJlc2VhcmNoLm9yZzCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkC
gYEAq1tErUsiT3Xmo0whVata7DEky+wTGh0D0AlHBuQNdHfogoK2vCrdCDk6216x7OSYO37lrxbB
Qd/3oXGaqk8zsyRl/N221uflWYVs9qgOqABYXkn7bWHrSQf15D/yQB/keqFeFjPrW+tmcjHEYJta
w2Dr0K9gyQVsbcrfbkk6HXUCAwEAAaOCA8cwggPDMD4GCSsGAQQBgjcVBwQxMC8GJysGAQQBgjcV
CIWbhmWDndEtgsWVEIGmmyuDmZlRgSWH0qVDgrHkJgIBZQIBBTA1BgNVHSUELjAsBgorBgEEAYI3
FAICBggrBgEFBQcDAgYIKwYBBQUHAwQGCisGAQQBgjcKAwQwCwYDVR0PBAQDAgWgMEMGCSsGAQQB
gjcVCgQ2MDQwDAYKKwYBBAGCNxQCAjAKBggrBgEFBQcDAjAKBggrBgEFBQcDBDAMBgorBgEEAYI3
CgMEMEQGCSqGSIb3DQEJDwQ3MDUwDgYIKoZIhvcNAwICAgCAMA4GCCqGSIb3DQMEAgIAgDAHBgUr
DgMCBzAKBggqhkiG9w0DBzBXBgNVHREEUDBOoC0GCisGAQQBgjcUAgOgHwwdamp3aGl0ZUByaXZl
cnNpZGVyZXNlYXJjaC5vcmeBHWpqd2hpdGVAUml2ZXJzaWRlUmVzZWFyY2gub3JnMB0GA1UdDgQW
BBSSFzfpC6wiUiUs2WbKNUrY6pYBmzAfBgNVHSMEGDAWgBT+5/KpKajUn7P6830wA8KstUdQZTCC
AQAGA1UdHwSB+DCB9TCB8qCB76CB7IaBs2xkYXA6Ly8vQ049QlJPLURTMDIoNyksQ049QlJPLUNB
MDEsQ049Q0RQLENOPVB1YmxpYyUyMEtleSUyMFNlcnZpY2VzLENOPVNlcnZpY2VzLENOPUNvbmZp
Z3VyYXRpb24sREM9cnJpLXVzYSxEQz1vcmc/Y2VydGlmaWNhdGVSZXZvY2F0aW9uTGlzdD9iYXNl
P29iamVjdENsYXNzPWNSTERpc3RyaWJ1dGlvblBvaW50hjRodHRwOi8vY3JsLnJpdmVyc2lkZXJl
c2VhcmNoLm9yZy9jcmwvQlJPLURTMDIoNykuY3JsMIIBEwYIKwYBBQUHAQEEggEFMIIBATCBpwYI
KwYBBQUHMAKGgZpsZGFwOi8vL0NOPUJSTy1EUzAyLENOPUFJQSxDTj1QdWJsaWMlMjBLZXklMjBT
ZXJ2aWNlcyxDTj1TZXJ2aWNlcyxDTj1Db25maWd1cmF0aW9uLERDPXJyaS11c2EsREM9b3JnP2NB
Q2VydGlmaWNhdGU/YmFzZT9vYmplY3RDbGFzcz1jZXJ0aWZpY2F0aW9uQXV0aG9yaXR5MFUGCCsG
AQUFBzAChklodHRwOi8vY3JsLnJpdmVyc2lkZXJlc2VhcmNoLm9yZy9jcmwvQlJPLUNBMDEucnJp
LXVzYS5vcmdfQlJPLURTMDIoNykuY3J0MA0GCSqGSIb3DQEBCwUAA4IBAQBAcpalu96zFfEytfTu
gF/lYkyKgnMGiq64hC5VNVwKJ2dQ6TjJkFWONo3nMDL08QBPHVReQMqORLw+TkLxj6fA+8SYHiuP
i74wleDZzmP6iicscyf+mFsYSmvk6606E27c6Qq3FOMrbI3yNlDHP9K2KL9Dcv/JK0l266aQOGCK
LqDiS/DpYK7So4G+wUn932/go3CY02vxsmFq9RJZ7V2ax0cNtYk9fLNxKXhIVNCWhag0JuLZt1z5
YCWUoDZedDiV8aaBaOqtgDwiLwJCZlpdtte/5Zxb1zwpmtx/LklY1w1Ha1UBf0HC/0G1lkXtraWS
gLWtKHTC/TqNs6cfPKSFMYICyTCCAsUCAQEwWDBBMRMwEQYKCZImiZPyLGQBGRYDb3JnMRcwFQYK
CZImiZPyLGQBGRYHcnJpLXVzYTERMA8GA1UEAxMIQlJPLURTMDICEywAA/iqHHX4OK2KY9gABwAD
+KowCQYFKw4DAhoFAKCCAccwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUx
DxcNMjIxMDI0MTg0MzE4WjAjBgkqhkiG9w0BCQQxFgQUUzS5rZzIwq/Y24nWqduvtnwqkP4wZwYJ
KwYBBAGCNxAEMVowWDBBMRMwEQYKCZImiZPyLGQBGRYDb3JnMRcwFQYKCZImiZPyLGQBGRYHcnJp
LXVzYTERMA8GA1UEAxMIQlJPLURTMDICEywAA/iqHHX4OK2KY9gABwAD+KowaQYLKoZIhvcNAQkQ
AgsxWqBYMEExEzARBgoJkiaJk/IsZAEZFgNvcmcxFzAVBgoJkiaJk/IsZAEZFgdycmktdXNhMREw
DwYDVQQDEwhCUk8tRFMwMgITLAAD+Kocdfg4rYpj2AAHAAP4qjCBkwYJKoZIhvcNAQkPMYGFMIGC
MAsGCWCGSAFlAwQBKjALBglghkgBZQMEARYwCgYIKoZIhvcNAwcwCwYJYIZIAWUDBAECMA4GCCqG
SIb3DQMCAgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCGjALBglghkgBZQMEAgMwCwYJYIZIAWUD
BAICMAsGCWCGSAFlAwQCATANBgkqhkiG9w0BAQEFAASBgJMHcSKfXJ6fZjkdTCbonsq582/oGbdR
EUl/Xet6c7dBzU5aC6XqKR0DIsBKb035ZXWbLlqbuUfXnW0iXM1CgPddz4MUf7So9PWR/AFNYX1+
0GDfeotQWJmFC1FXEVtvxafTOILeiwz4nAnZFNXxcPu4wBH8ocB2L90MI/42iKCHAAAAAAAA

------=_NextPart_000_00AC_01D8E7B6.F4E54580--

--===============0408975050803187196==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0408975050803187196==--
