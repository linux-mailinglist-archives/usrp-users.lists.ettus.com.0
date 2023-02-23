Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 67EB26A0F6C
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 19:26:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 94661380EDD
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 13:26:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677176793; bh=gc/0cFmeyt4uL3Sg8Id/jzCWLO0Yql8mGpmKHb/XWYY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=FkJNhAt4JXMti3c+yRyD+stvIln9FNNCfuYpthScobqsdhhQjsmtv8rwvp1BSeqZL
	 Uni6hp22IZ/Rkt2PHNHDDF2XoX3XGowvRmwKyDOgf9RUUFg8DUAx86iw3KuUtpkEnw
	 6Kj9W1MsIDWYEv+D2BCBT9I//MLs8ddzkCdTHr5pJxTMESJTQq23FcIftSL2KSx/rP
	 waI9So3ESntNdHASPrGFdfQIqspu7uy6eOKChA5ypNzDLgAumAy2WWnlKijX1w6J+x
	 Y0hqnIcfQafPiYlZrGN+ke69UhAst7EdFypoL2GU43PSTQ09xr4u6etWyUH1htrc+g
	 Vo/dPuYc46/ww==
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id BCDCA380EDD
	for <usrp-users@lists.ettus.com>; Thu, 23 Feb 2023 13:26:28 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hWdo3X/n";
	dkim-atps=neutral
Received: by mail-qt1-f169.google.com with SMTP id s12so11850880qtq.11
        for <usrp-users@lists.ettus.com>; Thu, 23 Feb 2023 10:26:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o47hkNIzfrr2sCkf2wuLdpk+JRsun2kFsbRttqyHg7I=;
        b=hWdo3X/nZVEbcypDM3fp9DFwqfTmEsfD0GqlY8dxf1OztTxakDEjej0xviPBW7jAJA
         KiXzZN4R95L4FP+yP4cVIA7XhZL0oJJIftIMDhWf0PV9y24DHaHFemakVAxk8eHOwLJa
         DD4gFN8Z9eSDaNzW78lKLvTnFcvwDYffc6XhShunrDgPH+uC6/fmFe3W7lForDpuqb8K
         DZofsc5vCCQrcsb/x9x6PBJlSsBSwK1ru9hzJZX0ZXlEWsxmpupxzdW7x24XQZOALY56
         8B9A6Y/PO6Bdw7LxCML/6NVfX0po4aW5AP3eqnzUfw3cQAzCXfGiWLBCMcuUebT/9Ksn
         IdaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=o47hkNIzfrr2sCkf2wuLdpk+JRsun2kFsbRttqyHg7I=;
        b=buO1c6gosnAxbKJDUcbvI1HE9ZI0TfREgwMV+RnjZCX0spCdUcIJCMHx4ssQYyxPeL
         oNlWmvEgL/Vl4VrPzM+UGZ3Z4SxFCqj9RSHho1dZzZ8LHq2zrcc/LMXFxCyWNe15zA10
         OVz4QoaLR+4Ffl+HLj29/nbCCntWHDVlL3G/r1BJ9G0OaVhEw5voDv6ilJJiKPYlEPAF
         zkBlSX/HvJas3IxS+rt1P7sHxVOa/zu00dmaANrkQ1d7Xle6Wh4a7T4sSZslmtcexvsh
         gHMU4EtUuPjVS/hg1SEF/Vh44MwN8xz45TMk2U1x9WOvPZVfwABa1Sg3o2j+YreO+E/r
         Jn1g==
X-Gm-Message-State: AO0yUKWmXmDxpZNbOolUYWIqzsJ4pyKNA/Eq7oVVcR4H7pSC73/gnb/t
	1kxo8KPB4UMrALQV1JdXsq7eHNbdhFw=
X-Google-Smtp-Source: AK7set8RFe9U8ocZ67H4w9vloJwEfn0qy67VzZsYntKGVIsOf8uUVKnZBLrq4lecjetfuHjueDZ9TQ==
X-Received: by 2002:a05:622a:1048:b0:3b8:4951:57b8 with SMTP id f8-20020a05622a104800b003b8495157b8mr9774082qte.15.1677176787898;
        Thu, 23 Feb 2023 10:26:27 -0800 (PST)
Received: from [192.168.2.154] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id m16-20020ac866d0000000b003b835e7e283sm4916552qtp.44.2023.02.23.10.26.27
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Feb 2023 10:26:27 -0800 (PST)
Message-ID: <b57b5593-4582-3b72-f40f-b80b684959a5@gmail.com>
Date: Thu, 23 Feb 2023 13:26:27 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <SJ0PR03MB6795356C657CD2B74974DC1EB1AB9@SJ0PR03MB6795.namprd03.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <SJ0PR03MB6795356C657CD2B74974DC1EB1AB9@SJ0PR03MB6795.namprd03.prod.outlook.com>
Message-ID-Hash: O3Y4AUIPY4CQNGRUFCLXG3E2VQCJRGXB
X-Message-ID-Hash: O3Y4AUIPY4CQNGRUFCLXG3E2VQCJRGXB
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC OOT Module w/ GNURadio 3.10.5
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O3Y4AUIPY4CQNGRUFCLXG3E2VQCJRGXB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6301986041645382319=="

This is a multi-part message in MIME format.
--===============6301986041645382319==
Content-Type: multipart/alternative;
 boundary="------------7FdfEt5IqoK701RPDXpcIu6e"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------7FdfEt5IqoK701RPDXpcIu6e
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 23/02/2023 13:17, Mattingly, Rylee wrote:
> Is there currently a way to create custom OOT RFNoC blocks that work=20
> with GNURadio 3.10?
>
> I am currently using UHD 4.4.0.0 and GNURadio 3.10.5.1 and I am=20
> looking for an alternative to build RFNoC blocks that function with=20
> GNURadio. I have been using gr-ettus to build OOT blocks for GNURadio=20
> 3.8 but it has been made clear in issues #60=20
> <https://github.com/EttusResearch/gr-ettus/issues/60> and #66=20
> <https://github.com/EttusResearch/gr-ettus/pull/66> that gr-ettus will=20
> not be upgraded for GR 3.10 and all of that functionality will be=20
> ported to gr-uhd.
>
> I have noticed that there is no rfnocmodtool replacement in UHD and=20
> the example RFNoC=C2=A0 project in UHD does not support GNURadio.=C2=A0=
 So has=20
> the GNURadio functionality for OOT blocks already been ported over or=20
> is that still in the works?
>
> Thank you,
>
> Rylee Mattingly
> Graduate Research Assistant
> School of Electrical and Computer Engineering
> The University of Oklahoma
>
>
>
I think the last time someone asked this question, the answer was "Real=20
Soon Now(tm)".



--------------7FdfEt5IqoK701RPDXpcIu6e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 23/02/2023 13:17, Mattingly, Rylee
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:SJ0PR03MB6795356C657CD2B74974DC1EB1AB9@SJ0PR03MB6795.namprd03=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div class=3D"elementToProof">
        <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0); background-color:
          rgb(255, 255, 255);" class=3D"elementToProof">
          Is there currently a way to create custom OOT RFNoC blocks
          that work with GNURadio 3.10?</div>
        <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0); background-color:
          rgb(255, 255, 255);" class=3D"elementToProof">
          <br>
        </div>
        <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0); background-color:
          rgb(255, 255, 255);" class=3D"elementToProof">
          I am currently using UHD 4.4.0.0 and GNURadio 3.10.5.1 and I
          am looking for an alternative to build RFNoC blocks that
          function with GNURadio. I have been using gr-ettus to build
          OOT blocks for GNURadio 3.8 but it has been made clear in
          issues
          <a href=3D"https://github.com/EttusResearch/gr-ettus/issues/60"
            title=3D"https://github.com/EttusResearch/gr-ettus/issues/60"
            data-loopstyle=3D"link" id=3D"LPNoLPOWALinkPreview"
            moz-do-not-send=3D"true">
            #60</a> and <a
            href=3D"https://github.com/EttusResearch/gr-ettus/pull/66"
            title=3D"https://github.com/EttusResearch/gr-ettus/pull/66"
            data-loopstyle=3D"link" id=3D"LPNoLPOWALinkPreview_1"
            moz-do-not-send=3D"true">
            #66</a> that gr-ettus will not be upgraded for GR 3.10 and
          all of that functionality will be ported to gr-uhd.
          <br>
        </div>
        <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0); background-color:
          rgb(255, 255, 255);" class=3D"elementToProof">
          <br>
        </div>
        <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0); background-color:
          rgb(255, 255, 255);" class=3D"elementToProof">
          I have noticed that there is no rfnocmodtool replacement in
          UHD and the example RFNoC=C2=A0 project in UHD does not support
          GNURadio.=C2=A0 So has the GNURadio functionality for OOT block=
s
          already been ported over or is that still in the works?</div>
        <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0); background-color:
          rgb(255, 255, 255);" class=3D"elementToProof">
          <br>
        </div>
        <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0); background-color:
          rgb(255, 255, 255);" class=3D"elementToProof">
          Thank you,<br>
        </div>
        <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0); background-color:
          rgb(255, 255, 255);" class=3D"elementToProof">
          <br>
        </div>
        <div id=3D"Signature">
          <div>
            <div style=3D"font-family: Calibri, Arial, Helvetica,
              sans-serif; font-size: 12pt; color: rgb(0, 0, 0);
              background-color: rgb(255, 255, 255);">
            </div>
            Rylee Mattingly
            <div class=3D"ContentPasted0">Graduate Research Assistant</di=
v>
            <div class=3D"ContentPasted0">School of Electrical and
              Computer Engineering</div>
            The University of Oklahoma
            <div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-si=
ze:
              12pt; color: rgb(0, 0, 0); font-family: Calibri, Arial,
              Helvetica, sans-serif;">
              <p style=3D"margin-top:0px; margin-bottom:0px;
                font-family:Calibri,Arial,Helvetica,sans-serif,EmojiFont,=
'Apple
                Color Emoji','Segoe UI Emoji',NotoColorEmoji,'Segoe UI
                Symbol','Android Emoji',EmojiSymbols">
                <br>
              </p>
            </div>
          </div>
        </div>
      </div>
      <br>
    </blockquote>
    I think the last time someone asked this question, the answer was
    "Real Soon Now(tm)".<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------7FdfEt5IqoK701RPDXpcIu6e--

--===============6301986041645382319==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6301986041645382319==--
