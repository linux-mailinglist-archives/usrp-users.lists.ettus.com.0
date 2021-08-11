Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 050D43E87FD
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 04:27:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BCAE6384288
	for <lists+usrp-users@lfdr.de>; Tue, 10 Aug 2021 22:27:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KYBPsyVo";
	dkim-atps=neutral
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 94A39383F21
	for <usrp-users@lists.ettus.com>; Tue, 10 Aug 2021 22:26:17 -0400 (EDT)
Received: by mail-qt1-f182.google.com with SMTP id a12so890263qtb.2
        for <usrp-users@lists.ettus.com>; Tue, 10 Aug 2021 19:26:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version:content-language
         :thread-index;
        bh=5jIiU31aNLDGHhgvxBvS60HYfMU69/FVpFKB3816NPE=;
        b=KYBPsyVoDQShEKQ2inyvjRajg9qwE+Fk/1Dpg/Yzbp+TS+jVGRZuIS/FE0xbHlBX7h
         FMY+SX2FI4de98OvkotDb/BYc0zxSOMn64CVvE2KmR5pyU4W0tHjlLh90S5ea9WNXbp7
         UyTxvbqXiMj47ATMXTQ8+R2S/pTKA3A+GP8GmStgxqQmTTFppwAb8gJ0GaZCXh5O9CjR
         YBakpr5OdnhIbg0tEIQJhjX4C5HlZ+K1Hfp2m4F2aET96XSDAENkLy+5M/RcpL77iSOP
         2KQICw45fSWa3sm/YEDet1p8nCe7fb/smfkQxthLRxizz+6aB1mZRq50i2z9S4ulNalc
         RpPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-language:thread-index;
        bh=5jIiU31aNLDGHhgvxBvS60HYfMU69/FVpFKB3816NPE=;
        b=Qa7eB+VdReSo4NViW5JDjnvRsojvOLUPbFQ+luJqGNR7cEMYcsCKRS8dkqyoRCY8tJ
         YQpLLTLHn1mOUDqiW1fJSx0yuwtkJcqntoJnv7E2blWzblgKEF6gb07LQT6ZWCM3aEsP
         luuKwyFQLW4UXhhEXtbyBxr7gwkuKdkZ+1QYPX9rO/4Yj9uDoj4hFXJ6kqquBTfIQ4n2
         JnrcLCt7FdZg+YN4/jmw04B4DXH2ACZkuq7tbea6FVAWappwh6TYrQcv/wOKXnfh1sS7
         qpd3nZZlfNnvnzqQuEYiH8SbjAOi60CDZeZfbFFFDWL5obbDrX+OacxDDswRyIUJfFRW
         Qoew==
X-Gm-Message-State: AOAM533n8+j4LuPBEd7Al0EjBKL7G0oEuwIfzfY11Tup6LIumvRhBg28
	Thl+8CEeGdY23M6fGd29R0wYMh7kqcMoYg==
X-Google-Smtp-Source: ABdhPJw6TxAxlOBTTxKyRYWzKwxlM9BxHmMD/JVXdoenzzrTvN1Q/ncPTfz98RDt6A4nXXL+Qt+Rbg==
X-Received: by 2002:a05:622a:64c:: with SMTP id a12mr19941009qtb.171.1628648776815;
        Tue, 10 Aug 2021 19:26:16 -0700 (PDT)
Received: from DESKTOPM8QU9PR (c-73-149-177-64.hsd1.ma.comcast.net. [73.149.177.64])
        by smtp.gmail.com with ESMTPSA id g145sm5062658qke.25.2021.08.10.19.26.16
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Aug 2021 19:26:16 -0700 (PDT)
From: <zhang.weit3@gmail.com>
To: <usrp-users@lists.ettus.com>
Date: Tue, 10 Aug 2021 22:26:18 -0400
Message-ID: <02e001d78e58$44fd82d0$cef88870$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AdeOVVxcuzUbiHwuQ3WizzwDYqkCbQ==
Message-ID-Hash: JPYUXVGIF2GOCJSVVBAOZ2N437O6WQZU
X-Message-ID-Hash: JPYUXVGIF2GOCJSVVBAOZ2N437O6WQZU
X-MailFrom: zhang.weit3@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How does 1PPS work in USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JPYUXVGIF2GOCJSVVBAOZ2N437O6WQZU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2986334462674997964=="

This is a multipart message in MIME format.

--===============2986334462674997964==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_02E1_01D78E36.BDECA620"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_02E1_01D78E36.BDECA620
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi all,

 

I am trying to reset multiple USRPs' time to 0.000s using a shared 1PPS (1Hz
clock signal). As far as I know, the UHD API function is simply to wait for
the PPS rising edge and latch the 0.000s value to all USRPs:
usrp->set_time_next_pps(uhd::time_spec_t(0.0)). 

 

My question is that whether I can use any other rate pulses, for instance
2PPS (2Hz clock signal). It seems to me the API function only cares about
the first rising edge of the pulse to set the time of all USRPs. And the PPS
signal won't be used anymore as long as I do not reset the USRP time again.
Is my understanding correct? Please comment if any. Thank you in advance!

 

 

Jack


------=_NextPart_000_02E1_01D78E36.BDECA620
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:\7B49\7EBF;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@\7B49\7EBF";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72" style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal>Hi all,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I am trying =
to reset multiple USRPs&#8217; time to 0.000s using a shared 1PPS (1Hz =
clock signal). As far as I know, the UHD API function is simply to wait =
for the PPS rising edge and latch the 0.000s value to all USRPs: =
<i>usrp-&gt;set_time_next_pps(uhd::time_spec_t(0.0))</i>. =
<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>My question is that whether I can use any other rate =
pulses, for instance 2PPS (2Hz clock signal). It seems to me the API =
function only cares about the first rising edge of the pulse to set the =
time of all USRPs. And the PPS signal won&#8217;t be used anymore as =
long as I do not reset the USRP time again. Is my understanding correct? =
Please comment if any. Thank you in advance!<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Jack<o:p></o:p></p></div></body></html>
------=_NextPart_000_02E1_01D78E36.BDECA620--

--===============2986334462674997964==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2986334462674997964==--
