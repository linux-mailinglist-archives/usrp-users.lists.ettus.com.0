Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C85F4319FF9
	for <lists+usrp-users@lfdr.de>; Fri, 12 Feb 2021 14:40:58 +0100 (CET)
Received: from [::1] (port=38484 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lAYgp-0004GV-Jd; Fri, 12 Feb 2021 08:40:55 -0500
Received: from sonic309-20.consmr.mail.ne1.yahoo.com ([66.163.184.146]:38745)
 by mm2.emwd.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <mikerd1@verizon.net>) id 1lAYgl-0004A9-ER
 for usrp-users@lists.ettus.com; Fri, 12 Feb 2021 08:40:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verizon.net; s=a2048;
 t=1613137209; bh=8FG5W7APb0E/duFMRBiirOrKHev+7qA4VjfK4KXL4/A=;
 h=Subject:To:References:From:Date:In-Reply-To:From:Subject:Reply-To;
 b=WJHOsc+7zkMs47Xagyh9fgeAybue/gCpGPmvBgtEIf8f+Sn10gLilSmfwXPn7c+np0nCWo/WtbP5FIVlTl6bj4IXVOPCkvz0aLz3FQiI3pGwnnopABRmPnJRQJkvqUt7aR3m39Cxhr720oi9bzDhyaB394bRxa1lRILXJ2Z/XXUcNQnUbfWRDz4dCf1i3AtE7jSju9gFGxHkGNRr3dUmv5UQVeNIaS+Nni9aPYwJsVBGrgPcHMgn8Dt57aNWy9GZ5ilcIApnbaQvwqN5ksYTLmhNW3GI1I15VLlp354MBKebLCBBD5HoPnhoYpCRE1yWfp77QIYHeJeH8i9PdhtCPQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1613137209; bh=U2gGjCi+0zKQps6qGQVEk27VAI7sHQJ3wQA8O9uUABC=;
 h=X-Sonic-MF:Subject:To:From:Date:From:Subject;
 b=odHT2RrimRrPGAqWUV74Z4AdPbNeQtaAahKRoMMiAvwTFxscVEW9MrpNiBnx7AwNo2kXRfI9k2iABLDyCcckKmxSCZLv+OG3cmzom5sXaEGuyeLzqwqFV8hOPZbkVRLYWt6DTpxU6sIounVqhOFf/XHGCRa8jiy5lfu3WmfcOXCx0tqK39mvKDn+uqB1shwe6XQEDjDQndRspL4gN5vJxbZ34s13pdLeJgPTeYvYpWKSsV5LeUi88phXj4HxWzvxEjI3JQzIdfTlEnk+/RqFtRavxRV6jr3lUX8h+IDh/Z7v1OQbMBYpC6g4xElQ//43os3QIF93EgFoABIVWm/Jjw==
X-YMail-OSG: Aoks59AVM1mXXrmDIu0bs2GExNRjfiy7Wa3QU45_tP4fpgBr8F7nZi6U0LcEZbd
 9AeoSSnR0fF3xNzJpvIkyImXPbZkUozAmMVEC8Mp1PRARLaw6Djm6tgECwtUISInJ0uyrZAYBQKi
 5YnaKVupc9t6XZR2vCcfPJzP8VWM1Qk9I02OOlnUGJJ1s3mhETqIXBAaA6O5lJXlUSUIVgsq40go
 4VPSHnloJWJu_EPO2Mq1_nhel72Ww3d5QTpqgu.URNE2wWLElhO13zVX5N8zYSBMg2ynubfD75pw
 FLStvQDeYtZUoTpoPctvaM7PLgHosPf23IiTpPXXxHKHDm1LgK7SQx2fR2TIffnDdKVHejYLw3Dh
 ueEoNzkIBu2Mh9HjZpLHrxzwDFm6mbDwfismEpw9huFJUtNNl74eUYdv1O7BywULN.nZfdn9jYpE
 yTpdAtFW44dxf.IevmjOQ_oPSq0xHdPMF8mGDYW84Epc7LDxLHqS57YjPc.v26FsyHjUpu0weBuz
 ooPH2ZC2cksatWCLXPEWUJw_ulWwOgQsd3qChDMFh.TBGr5ZSms.KFFX09U5e6GZV_gkUzSGWkmM
 53wGtQy_HarcfAPKmMfQNN5THnNmUm_q9.DhMSte9eAT8oRb1cxA3eOqHbskT56ZnDDL0wWqrNzW
 WZ8JKBKC8LcWYCSWL3zOMY1HI5eFBF2NrvCajKLx_zn7sL8SrjxhZUCfvkMETK8YZO97vCWO8w7r
 QT9H58xBG7JQBnpBEVNVulGONhvacyg1YW3kdrrwiz.EnNHc77gyHVw9gcugfxsrqUibhGj_m1tO
 Kcr2HmCMB16Z3Qa2GrgvDZ3oSuDpLQOBaPoRy6eFBBikB0gX6ZJzREkmFVSuW5X8bHdVKIt2_WBp
 SBTc7juBcdD_.BNEPfYByoX3Q_uWujsSb5JFldOp_TIuBz4vUbPl96sqjx85LHH_qtaeLKeWqNGB
 DpwaB9EJwdTH3WqALLExZucIpsk0WH6fonjbnwYwrfAahBUuHY8h1zo87RQV3HJD30YiHf2EUCGQ
 Nf02.B0LQHtFKs.6kau4agjSEV9VWi_UAmw77nyTkWEfJo2Zd1Pqb.cmc0DCNtIGh_zmDudlDIxq
 NUSJYa4BI4uddQSBI.bLhB7_B7k7778ZmVaRYfapo_hvrhzMxLSgzvhxN8g3S1awGHaaczSRl5mz
 dSgeEPOmkWDU8b0jcirXqySXlEBhmfx8es_jQV2AZtBofnmQNptlwBWlnzc5E2sIRTtK1anLJg9_
 mnJz3nEQ_A_cLsQaIMtvHPVUeSRpLd4e5cQmEK9wozb9NluF1nX6qy4fWPMtzLycxpsIEcOjGhlW
 Ai8u5iqurqJXLnYI8EFA1ls77UTfVLr1PN5BJOVNmkZN7iDDpLOW1QAtNIPDMMxGaKeIs1NcuwdI
 UTFfVaToA1aSelPl_mF2YSgAD2d2YWA8IEWiG.1950n67egNNZcl58nNb8aY13cqVauNllp1BoTD
 B62T0GDOYQteIgq1RQnC_TsHGLjmPyeIEY09OWqQWZLOa6v2CkiBRhHGfS_fWaqqdDuBYWS.OfXT
 pvqpeS6houXcMDBcEDiXo_G_GHTT6ilRKam0VPuac9KAxvcdgsk5LdwzI1AkHIc19CCGof1ltY9J
 WTieSeH7yodLgIPMK.8F5UurxJF4wXpodRZXkpUeU1nI0gdBqsBudQCZKXxhwq9.7zxc_M79oGyv
 ZBHNT05qnzzX38ci7forISI77mhdqO.6aEl224MLRwjYU3AtI8QwqAlwobv05QKARbB29iCquIM3
 JR4s6g8ZiWrrVX7k2hQn0uohiiVD3xKPYPCMny95FeCXPmN7hO0W9vEaQsNlKh9Pnr7GpsjbppNI
 VUSjRXs_TatozF59EOK_7WcjS7vIBT0bGQsjt4.Vye_p19jrvxSJmai61lcSqWPSIlE5.OhqINCp
 LKPoZtoPRVPAWUYYcXOry_OmdqGU_foNTvRPLnxdW6GxokafvR8ONYUp2nLBcapy9mNSigLfMV4i
 HtKCiFmhzL1KG5.mjGyZFzWfl3HmUAaaE2DMwgyLSdSr3oGFm8kFz7z_6n8t3CCxxGsmkSD_ohBd
 N9omeQy8ZyiDFDoLKgIW6OKMExidLY6loZ1zFriIlVSFGH83XKfNTFwopgkrAHOG7nMNCOqfLfuy
 LblSL_Ksvs_e_ATT.m5tUi4.qcp609LsH5CnugnzwNh1hx6tui9Rdk5bZmV.jZw9LvwLmFowfvgv
 FfElvyDBtiMrx1hZvyT1pyrCHO6M4euGF0Wrp4Yah8VGU4t.WeOjwEjyRhMeyjOL0UjPaBusuZjC
 IDRn8adGN.cHDwAPR7B3LjkIrc9tuqcefCx7X13giQJlJGTqfhpI1WTze7ZJP4OnKQEKpSRzGU95
 4tS1WQG4-
X-Sonic-MF: <mikerd1@verizon.net>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic309.consmr.mail.ne1.yahoo.com with HTTP; Fri, 12 Feb 2021 13:40:09 +0000
Received: by smtp419.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID f697e4cf3005834b0575cd0b8b1bbdde; 
 Fri, 12 Feb 2021 13:40:07 +0000 (UTC)
To: usrp-users@lists.ettus.com
References: <LNXP123MB37245E820A2A005C90462024CA8B9@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
Message-ID: <ac290695-1961-6291-50ea-76862addd90b@verizon.net>
Date: Fri, 12 Feb 2021 08:40:06 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <LNXP123MB37245E820A2A005C90462024CA8B9@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
Content-Language: en-US
X-Mailer: WebService/1.1.17712
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.aol
 Apache-HttpAsyncClient/4.1.4 (Java/11.0.9.1)
Subject: Re: [USRP-users] RFNoC OTT Block on E320
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
From: Mike via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mike <mikerd1@verizon.net>
Content-Type: multipart/mixed; boundary="===============7043231005022881478=="
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

This is a multi-part message in MIME format.
--===============7043231005022881478==
Content-Type: multipart/alternative;
 boundary="------------AD659EB494CF1F00E6B0C953"
Content-Language: en-US
Content-Length: 8702

This is a multi-part message in MIME format.
--------------AD659EB494CF1F00E6B0C953
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Mark,

For uhd_usrp_probe to correctly read your fpga block module you need to 
update the XML file in your RFNOC-module/rfnoc/blocks directory.� Then 
you need to cross-compile your module like you would with gr-ettus and 
install it on the E320.� I use sshfs to cross-compile on the host and 
make it immediately available on my E310.

It may be that the process on UHD4 is slightly different but that is 
what I do to make the correct name of my new block show up in 
uhd_usrp_probe.

I still have the python "attribute error" so hopefully now that two 
people are seeing this on both UHD3.15 and UHD4.0 we can get to the 
bottom of it.

Mike

On 2/12/21 6:52 AM, Mark D via USRP-users wrote:
>
> Hi,
>
> I�m trying to add an OTT block into the FPGA for an E320. I�m using 
> version 4.0.0 of the UHD.
>
> So far I�ve used rfnocmodtool to create the OOT folder structure and 
> add my new block. My initial plan was to add this block as per the 
> default code generated that just passes data through. I wanted see 
> that this was instantiated into the FPGA and the system still worked 
> before starting to add my own code.
>
> I�ve been following the �Getting Started with RFNoC in UHD 4.0� page 
> on the Ettus website and also the Youtube video �RFNoC 4 Workshop - 
> GRCon 2020�. The .yml file I�ve created connects the OTT block between 
> the radio Rx and stream endpoint (I�ve removed the DDC / DUC and 
> already had the FPGA working without these).
>
> So far I�ve got the FPGA built and uploaded to the FPGA. 
> Uhd_usrp_probe shows that the RFNoC routing as expected, but the name 
> of OTT block has been replaced with Block#0. The OOT project appears 
> as a folder in GNU radio with the new block available to be dragged 
> into the project.
>
> I think the issues I�m now having are similar to those reported 
> recently by Mike with the E310. Trying to run a GNU radio project 
> results in the error � AttributeError: module �Dilbert� object has no 
> attribute 'dogbert'�
>
> The examples I�m following are all based around the X310, is there an 
> extra step required for the E3xx USRPs to update the firmware running 
> on the device so that it�s aware of the new block type? If so I�ve no 
> idea how I would go about this.
>
> Any help on this would be much appreciated,
>
> Mark
>
> ------------------------------------------------------------------------
> This email and any files transmitted with it are confidential and 
> intended solely for the use of the individual or entity to whom they 
> are addressed. If you have received this email in error please notify 
> the system manager.
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------AD659EB494CF1F00E6B0C953
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body>
    <p>Mark,</p>
    <p>For uhd_usrp_probe to correctly read your fpga block module you
      need to update the XML file in your RFNOC-module/rfnoc/blocks
      directory.� Then you need to cross-compile your module like you
      would with gr-ettus and install it on the E320.� I use sshfs to
      cross-compile on the host and make it immediately available on my
      E310.</p>
    <p>It may be that the process on UHD4 is slightly different but that
      is what I do to make the correct name of my new block show up in
      uhd_usrp_probe.</p>
    <p>I still have the python "attribute error" so hopefully now that
      two people are seeing this on both UHD3.15 and UHD4.0 we can get
      to the bottom of it.</p>
    <p>Mike<br>
    </p>
    <div class="moz-cite-prefix">On 2/12/21 6:52 AM, Mark D via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:LNXP123MB37245E820A2A005C90462024CA8B9@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">Hi,<o:p></o:p></p>
        <p class="MsoNormal"><o:p>�</o:p></p>
        <p class="MsoNormal">I�m trying to add an OTT block into the
          FPGA for an E320. I�m using version 4.0.0 of the UHD.<o:p></o:p></p>
        <p class="MsoNormal"><o:p>�</o:p></p>
        <p class="MsoNormal">So far I�ve used rfnocmodtool to create the
          OOT folder structure and add my new block. My initial plan was
          to add this block as per the default code generated that just
          passes data through. I wanted see that this was instantiated
          into the FPGA and the system still worked before starting to
          add my own code.<o:p></o:p></p>
        <p class="MsoNormal"><o:p>�</o:p></p>
        <p class="MsoNormal">I�ve been following the �Getting Started
          with RFNoC in UHD 4.0� page on the Ettus website and also the
          Youtube video �RFNoC 4 Workshop - GRCon 2020�. The .yml file
          I�ve created connects the OTT block between the radio Rx and
          stream endpoint (I�ve removed the DDC / DUC and already had
          the FPGA working without these).<o:p></o:p></p>
        <p class="MsoNormal"><o:p>�</o:p></p>
        <p class="MsoNormal">So far I�ve got the FPGA built and uploaded
          to the FPGA. Uhd_usrp_probe shows that the RFNoC routing as
          expected, but the name of OTT block has been replaced with
          Block#0. The OOT project appears as a folder in GNU radio with
          the new block available to be dragged into the project.<o:p></o:p></p>
        <p class="MsoNormal"><o:p>�</o:p></p>
        <p class="MsoNormal">I think the issues I�m now having are
          similar to those reported recently by Mike with the E310.
          Trying to run a GNU radio project results in the error �
          AttributeError: module �Dilbert� object has no attribute
          'dogbert'�<o:p></o:p></p>
        <p class="MsoNormal"><o:p>�</o:p></p>
        <p class="MsoNormal">The examples I�m following are all based
          around the X310, is there an extra step required for the E3xx
          USRPs to update the firmware running on the device so that
          it�s aware of the new block type? If so I�ve no idea how I
          would go about this.<o:p></o:p></p>
        <p class="MsoNormal"><o:p>�</o:p></p>
        <p class="MsoNormal">Any help on this would be much appreciated,<o:p></o:p></p>
        <p class="MsoNormal"><o:p>�</o:p></p>
        <p class="MsoNormal">Mark<o:p></o:p></p>
      </div>
      <hr>
      This email and any files transmitted with it are confidential and
      intended solely for the use of the individual or entity to whom
      they are addressed. If you have received this email in error
      please notify the system manager.
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------AD659EB494CF1F00E6B0C953--


--===============7043231005022881478==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7043231005022881478==--

