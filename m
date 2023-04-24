Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBF46ED4F9
	for <lists+usrp-users@lfdr.de>; Mon, 24 Apr 2023 21:00:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1AD403846FB
	for <lists+usrp-users@lfdr.de>; Mon, 24 Apr 2023 15:00:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682362817; bh=oo+DNVSEz1oqtF5Z0DI0unDfTZRY5U0TdKaIJ2aknUY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=nckXDiuTUszx20+yEEewN8n4EGWUcxXLnJ8TMZcypujF1MRgr63G+h95WWlg8g20S
	 b/twmgnKlCE0bxKNEvYuGCYorVeJ6zfh7fkFzBlsjTzhEvn6KnikMa9hUKh2KX9JoU
	 cBDL0jb0Mvf07MB82Suw7uBrrlIkfmcNlyJYlN8x1u8htE0VAaytzg+VWckPpEvZts
	 qTp1DC7pz/O28S3GzFdA3Kbbx3zs2iaL7kzexnbYIC5a9/yqDJFbze34DA8kUadzR+
	 aL9MkbrRR8oCKXtz5dSDXeVBVLiCt2E7BrbRV7p0wugOCtkNLYnJi+KJvhwfMhzxQa
	 SucExmRbqDr9g==
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 9AC8A38452D
	for <usrp-users@lists.ettus.com>; Mon, 24 Apr 2023 14:59:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="rB2RaGUp";
	dkim-atps=neutral
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-74ab718c344so1370450985a.1
        for <usrp-users@lists.ettus.com>; Mon, 24 Apr 2023 11:59:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682362771; x=1684954771;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tiZi4fhjQBZWJAQ/49HlSPfMPR1Tmgfls5lyMZ3m2dE=;
        b=rB2RaGUp919MAp+L+ZjgmQkAvUv8NOOSGAZOrCzfkp1NINk/sZY4DWDwT4t1DVY/ll
         kku31SWQMo6NN2h9sCxKljhSTp5jX7u26vUDy6Qbsg6hQeiaCOzoDrDfg3A90KTfk4ne
         Ehio11w6/+TWpqRJ7yXwrrYdb0zzCgyQxEOW2n2igPHfEp8K1fVkU8FOmfhQtd6nhdap
         Wm9HbmYoH6Q8QANh9c+Vk7gjkw0MKSgOIgHAXRW7fccEYQmSVF56tfwSW5GhSxcfRBnI
         DPLM7WBSQxtSw9/TlZV7OZbQOmlqQB9CHz/7fC6dcFuTQXCsAetiP5jG/6W6+2yC4Luk
         819g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682362771; x=1684954771;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tiZi4fhjQBZWJAQ/49HlSPfMPR1Tmgfls5lyMZ3m2dE=;
        b=lJL2BGFsrR4WHgftZqrMNLz8zikfwjHRMRX0r2/Ht5A1Mih/RvrTkr1LR8YbrVJ/3x
         msMKweKuLftDZey/IfPNNCU2j9sW29EouPXAO1VxxZ7UTA49lVYCWXTOnKrgoFTZqMNG
         IVhcO/xaZRXZQ3zsJBtXQ+lWnWs+2qXxS2+9/E9NFau+vCSC05mFocNfuCSKG57I4+tn
         BqxIw4/AbpXk1jDFluC540mPku0gXuBy3UW6FU4NOjFCr+6bIiPtfO15GY5HBFO6lmzg
         6ygAV754UVGushX1m8iIBw0uVkJatL2maxKv08uxG2EtgXdXep65xv9E4X3zszAkoNoH
         eybQ==
X-Gm-Message-State: AAQBX9ezvJZzG6FUytNucFzMqA5dIvPHD7LyTzoqFYuorHVVEpKDNPVK
	zIFHUp9yxGISh7h8Wtu68QcVoU3KwxU=
X-Google-Smtp-Source: AKy350YtCzlHsfbOnpDHrdGXPAT9vJa/z0JaWglXLnC2qcE6+izl2miaRF4oFbgJdkQWrNWDhtx5jA==
X-Received: by 2002:a05:622a:196:b0:3ed:6505:bfa9 with SMTP id s22-20020a05622a019600b003ed6505bfa9mr25212686qtw.23.1682362770795;
        Mon, 24 Apr 2023 11:59:30 -0700 (PDT)
Received: from [192.168.2.177] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id w29-20020ac84d1d000000b003e4ee0f5234sm3859629qtv.87.2023.04.24.11.59.30
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Apr 2023 11:59:30 -0700 (PDT)
Message-ID: <a2ed5ae2-cc06-08bc-1ba3-45fc3e403421@gmail.com>
Date: Mon, 24 Apr 2023 14:59:29 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <bca00bea81c04e28a8cd963fb3a02279@student.ubc.ca>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <bca00bea81c04e28a8cd963fb3a02279@student.ubc.ca>
Message-ID-Hash: LIPZTJ5PU6MCAHE4EZINWCFAVPVM55KC
X-Message-ID-Hash: LIPZTJ5PU6MCAHE4EZINWCFAVPVM55KC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: connection
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LIPZTJ5PU6MCAHE4EZINWCFAVPVM55KC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4545573390229842945=="

This is a multi-part message in MIME format.
--===============4545573390229842945==
Content-Type: multipart/alternative;
 boundary="------------ZWyk5SsBa3z983bwvhaq10UZ"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ZWyk5SsBa3z983bwvhaq10UZ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 24/04/2023 13:34, alir69@student.ubc.ca wrote:
>
> we cannot connect our USRP E310 to computer not with USB=C2=A0and not w=
ith=20
> ethernet
>
> linux machine windows machine and mini pc cannot recognize the device
>
>
You should probably study this a bit:

https://kb.ettus.com/E310/E312_Getting_Started_Guides

The E310 is NOT like a regular USB-connected or Ethernet-connected USRP=20
radio.

It is an embedded system with a USRP radio inside.

Older versions of the system image supported 'network mode' that=20
provided a very-low-performance
 =C2=A0 network-based channel for use with an ordinary host computer. Rec=
ent=20
system images don't
 =C2=A0 provide this.

The USB port will look to your computer like a USB serial port, and it=20
supports a TTY-based console into
 =C2=A0 the built-in Linux embedded computer.

Similarly, the ethernet port provides SSH connectivity.



--------------ZWyk5SsBa3z983bwvhaq10UZ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 24/04/2023 13:34,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:alir69@student=
.ubc.ca">alir69@student.ubc.ca</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:bca00bea81c04e28a8cd963fb3a02279@student.ubc.ca">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div id=3D"divtagdefaultwrapper"
style=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-=
serif;"
        dir=3D"ltr">
        <p>we cannot connect our USRP E310 to computer not with USB=C2=A0=
and
          not with ethernet</p>
        <p>linux machine windows machine and mini pc cannot recognize
          the device</p>
        <br>
      </div>
    </blockquote>
    You should probably study this a bit:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/E310/=
E312_Getting_Started_Guides">https://kb.ettus.com/E310/E312_Getting_Start=
ed_Guides</a><br>
    <br>
    The E310 is NOT like a regular USB-connected or Ethernet-connected
    USRP radio.<br>
    <br>
    It is an embedded system with a USRP radio inside.<br>
    <br>
    Older versions of the system image supported 'network mode' that
    provided a very-low-performance<br>
    =C2=A0 network-based channel for use with an ordinary host computer.=C2=
=A0
    Recent system images don't<br>
    =C2=A0 provide this.<br>
    <br>
    The USB port will look to your computer like a USB serial port, and
    it supports a TTY-based console into<br>
    =C2=A0 the built-in Linux embedded computer.<br>
    <br>
    Similarly, the ethernet port provides SSH connectivity.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------ZWyk5SsBa3z983bwvhaq10UZ--

--===============4545573390229842945==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4545573390229842945==--
