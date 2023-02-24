Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6A66A1D84
	for <lists+usrp-users@lfdr.de>; Fri, 24 Feb 2023 15:34:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5DCC4383BC0
	for <lists+usrp-users@lfdr.de>; Fri, 24 Feb 2023 09:34:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677249270; bh=8jxhGaGTKU+ASXiMZHK+D7VQYEZ9ro828bZu9Z0EKXM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=DPYxmPDw4vRgWe0YdEcdvLN1Aq4C7kdpT5RgeXIKboIFc7mt5YR0oQp/2dw+NTDCp
	 yeGisEHGtQ/4LPSY+dQnB4FNFrB8H44K5VU0mT+ed3jEFw6uKJ/Xzr5o+35p2UaMl3
	 nsSoMxERXqoSyG+9QAoYo323ZRoKs/VDCoKEAplOgwbZjz6omcCJSlBQWhA2/n9Fbr
	 dWYy4jt8LP6bP/Xfb8EJCiUGXBxLM/SGP7lNzvfKak9QUzvhK51mpyiJQ9a7Ewufff
	 SD8pK8DE6zQUFQAtfwZ4ONd82akT8G9IIIthO6UwB8wvcKdgM/kLeJlXlDHeTVymPG
	 4EkyulwTZYxWQ==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 5322C383BC0
	for <usrp-users@lists.ettus.com>; Fri, 24 Feb 2023 09:34:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OkiQwdcW";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id w23so14615555qtn.6
        for <usrp-users@lists.ettus.com>; Fri, 24 Feb 2023 06:34:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F8qT/TwPa/omELNa8kbJTQQJ93X7u6a3thJvPp7MF+s=;
        b=OkiQwdcWgljV6URIfIIXaWycBXPcqMLpJQ4bMWJgo8wcJU1vGxqmiiUF/oiS+Pzz2K
         wJe8hWWCbMZBWItKCSNW3hs4NnCJ0bKqUnMlWoIccuuic0tNrWV77j3vf4VMK5Gekpeu
         GXW9LAONMhh5Zg7kHOgfuYDphhf/jzk0CzcsAPlj+EoTO+OQtbHqVWjQQOBQg9zzbZvj
         Uz98gYC4NTwJlAVWTs7btswfyRqX7fVfYTIaLFsCjuraMcEjbpZ5FwNpVafjxxLKq+Tf
         uMt1FYhqHtQaFhVnYQP3n+pha3QblrBxWRQgVaBTkN8VgH4fzej7mX8WOwU5lR1Ztsz9
         eytQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=F8qT/TwPa/omELNa8kbJTQQJ93X7u6a3thJvPp7MF+s=;
        b=YrQKtQQS7ns68bwC2Ws9rs6TTna2rphi8yyr++bOuR6yu4cHbbC4dS82xwQYf4KFYU
         qASBVIrFrwADAYSDryRdNFbMAqVqZXsv4NyGFY7tehvOVPYjzvnUDkAlQ932SncfWE4g
         5YOtkL0+Arkho1doocZOXAtYB3RIJFp199zxrroVSpU8WMXUbvxU5Q1Kf9k5zsw9vQDH
         5HvW2Er4iMNsOJGE4WtfelQ4yp+fuitjXNbaNvp53eDgXHdvDMa4Zi/lSD4ozdFyv68P
         FsL8AuOYzhnCW601M66hen0Uf0pHljXLgjUgInS9blvU/WbxqRbyqQYaRICgwakTYrS9
         g3eA==
X-Gm-Message-State: AO0yUKXHx/zrA6yHIB/Q62Eou2DHcmfOfgsTmmbWEdhRGwLD/wjjUM3x
	V41kXBHWkygjNq/YrmR6XvquTyLATvM=
X-Google-Smtp-Source: AK7set+YGuh8zP5qGUq+Q5ZWTWepBR+KSLWM41ZjLdWk8O89EOCPGil92tskDtrORCSAccb6GaKkWA==
X-Received: by 2002:a05:622a:1742:b0:3b1:80ab:38e with SMTP id l2-20020a05622a174200b003b180ab038emr14019361qtk.0.1677249264439;
        Fri, 24 Feb 2023 06:34:24 -0800 (PST)
Received: from [192.168.2.156] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id c197-20020ae9edce000000b00738e8e81dc9sm7744890qkg.75.2023.02.24.06.34.23
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Feb 2023 06:34:24 -0800 (PST)
Message-ID: <139d51e9-0910-a522-50cd-4da7591c5537@gmail.com>
Date: Fri, 24 Feb 2023 09:34:23 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <PH0PR15MB47042B44A404C29D125A5871E3A89@PH0PR15MB4704.namprd15.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <PH0PR15MB47042B44A404C29D125A5871E3A89@PH0PR15MB4704.namprd15.prod.outlook.com>
Message-ID-Hash: VK27WILI7BY645D4FLNWRIZUQJDBO5FZ
X-Message-ID-Hash: VK27WILI7BY645D4FLNWRIZUQJDBO5FZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: REF IN and PPS IN signals work on X300, fail to lock on N300
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VK27WILI7BY645D4FLNWRIZUQJDBO5FZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8430549639111221879=="

This is a multi-part message in MIME format.
--===============8430549639111221879==
Content-Type: multipart/alternative;
 boundary="------------3Evc0VXapYf80SQqTUMy6bSd"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------3Evc0VXapYf80SQqTUMy6bSd
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 24/02/2023 04:14, Vermeulen, Bas (Consultant) via USRP-users wrote:
> Hi,
>
> I am trying to get a working multi-usrp setup with both X300 and N300.
>
> I currently have a signal generator generating a 10 MHz clock and a=20
> 1PPS signal.
> Those are connected to a splitter (each), and then connected to both=20
> X300s REF IN and 1PPS IN.
> This setup works, and with srsRAN I can use two X300's to get an LTE=20
> 2x2 MIMO setup with the throughput I get with one X300.
>
> If I connect the same signal to the N300, the N300's PLL fails to get=20
> a lock.
>
> Does anyone have any idea what goes wrong there? We're getting a WR=20
> switch somewhere in the future, but I would like to be able to test
> with the N300s before it arrives.
>
> Regards,
>
> Bas Vermeulen
What is the level of your PPS and 10MHz signals as seen by the N300?=C2=A0=
=C2=A0=20
1PPS should be about 5VP-P, and somewhere around
 =C2=A0 +2-3dBm for the 10MHz, but not to exceed +10dBm.


>
> -----------------------------------------------------------------------=
-
>
>
>
> CONFIDENTIALITY NOTICE: This message (including any attachments) may=20
> contain Molex confidential information, protected by law. If this=20
> message is confidential, forwarding it to individuals, other than=20
> those with a need to know, without the permission of the sender, is=20
> prohibited.
>
> This message is also intended for a specific individual. If you are=20
> not the intended recipient, you should delete this message and are=20
> hereby notified that any disclosure, copying, or distribution of this=20
> message or taking of any action based upon it, is strictly prohibited.
>
> English | Chinese | Japanese
> www.molex.com/confidentiality.html
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------3Evc0VXapYf80SQqTUMy6bSd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 24/02/2023 04:14, Vermeulen, Bas
      (Consultant) via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:PH0PR15MB47042B44A404C29D125A5871E3A89@PH0PR15MB4704.namprd15=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        Hi,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        I am trying to get a working multi-usrp setup with both X300 and
        N300.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        I currently have a signal generator generating a 10 MHz clock
        and a 1PPS signal. <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        Those are connected to a splitter (each), and then connected to
        both X300s REF IN and 1PPS IN.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        This setup works, and with srsRAN I can use two X300's to get an
        LTE 2x2 MIMO setup with the throughput I get with one X300.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        If I connect the same signal to the N300, the N300's PLL fails
        to get a lock.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        Does anyone have any idea what goes wrong there? We're getting a
        WR switch somewhere in the future, but I would like to be able
        to test</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        with the N300s before it arrives.<br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        Regards,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        Bas Vermeulen<br>
      </div>
    </blockquote>
    What is the level of your PPS and 10MHz signals as seen by the
    N300?=C2=A0=C2=A0 1PPS should be about 5VP-P, and somewhere around<br=
>
    =C2=A0 +2-3dBm for the 10MHz, but not to exceed +10dBm.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:PH0PR15MB47042B44A404C29D125A5871E3A89@PH0PR15MB4704.namprd15=
.prod.outlook.com">
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
      </div>
      <br>
      <hr>
      <font size=3D"1" face=3D"Arial" color=3D"Gray"><br>
        <br>
        <br>
        CONFIDENTIALITY NOTICE: This message (including any attachments)
        may contain Molex confidential information, protected by law. If
        this message is confidential, forwarding it to individuals,
        other than those with a need to know, without the permission of
        the sender, is prohibited.<br>
        <br>
        This message is also intended for a specific individual. If you
        are not the intended recipient, you should delete this message
        and are hereby notified that any disclosure, copying, or
        distribution of this message or taking of any action based upon
        it, is strictly prohibited.<br>
        <br>
        English | Chinese | Japanese<br>
        <a class=3D"moz-txt-link-abbreviated" href=3D"http://www.molex.co=
m/confidentiality.html">www.molex.com/confidentiality.html</a><br>
      </font>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------3Evc0VXapYf80SQqTUMy6bSd--

--===============8430549639111221879==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8430549639111221879==--
