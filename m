Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9188CB6D4
	for <lists+usrp-users@lfdr.de>; Wed, 22 May 2024 02:47:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CA15B380C02
	for <lists+usrp-users@lfdr.de>; Tue, 21 May 2024 20:47:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1716338871; bh=VSHsJnzWnBCNhjRldzdajLMt/ZbmQjNADcjZKbgxN6Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=hnDGwhMhDCsq+0NvEM+sIVDTWdrBVNZhPnXuuE4tI8IfhVaCqlq09kYSzFY5Dq3q3
	 XIoGMiySPSqayzMiBBagxs/TlE0lgMpJFdnAUvVAH5Rpc+q30mXi3e7vYwCTv6cx/l
	 jcfme/hBjEZpsSx+B3OKiaABGU3AN7qt8lF8oIQuSxwk7opDQQC0p6GRIx+M8yUvQi
	 X4+frE9ixxE6UBg9CWQSul4s+dMVd1/KG3GG00qqGzF7lL6ipEqRkegCmGB4G8HhbT
	 hchrMM3E6sO7qb8kh+/tSY7Pf4z7CInhYA//vsS51d7A6SfmUyTHU/bBsUWhLSNih8
	 RIkYwLqWKZj2g==
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 25706380A52
	for <usrp-users@lists.ettus.com>; Tue, 21 May 2024 20:47:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mDY91xDq";
	dkim-atps=neutral
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-6ab831cd222so558326d6.0
        for <usrp-users@lists.ettus.com>; Tue, 21 May 2024 17:47:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716338823; x=1716943623; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HhphGoUoE3w3RQJhpu5r2nRd4kt6QKsdwkxEEy8tyOM=;
        b=mDY91xDqA2PFnuDUnrBTVZBJyqOFm/rUW0SaiYmGfQTe1Heq6FH4XF44XFbxUdhJY6
         RX+9eyqf6+yB2QEaY4A/I5HrD2hu8rI5s54njM6SZMtu42yNGOZfTqdvFlSPnregKfsS
         nYdD9VGyCv4e09Dn03adTr45yjVQZtE62macIaMsPPIn7FQ19rWat/CgtbXA14GBJwli
         40bBebapG6bTHaxWg2wbXD0sHJCSp/DIvqqWbxJoeFZ88KlFD842XB+ZkpGcR1rNr1Od
         ej3WOAjF3qQmVqBoski1Vo9abgDMB6NkVLyZy0YnlDow1zhEKRGal/jK80TiF/YJRLeP
         NJ4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716338823; x=1716943623;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HhphGoUoE3w3RQJhpu5r2nRd4kt6QKsdwkxEEy8tyOM=;
        b=cn5znGRD0XSrVr91BudHNJGHamaNJlzEJHzH0qa1Z6Yp/LYvsBlM2th01DoAZbFo1v
         ALjJwSYk0wlzW2b1kkM4Vld9POB+tp7E7j2USA6QsNdWfIVU6by01X0IAopKNfHfI0qm
         2wseTERfKPSCZ/Jks2T366hMCYMXW8VkgTjhQEy1QZxOX9TUC8SBpXXZOcsUGIzDyXy9
         fl/iMJa9C995ODADKMeq2T9YDWNTdZmKHpayAYvqT08arEZhH26TSGL2hhrRvmGWPZAw
         x9rwyrwGg7lMCmR7S4K5qtowaNtP0fdyZWai4R2dwnyTHkJQdw7qKWqTG/kPCqHhbWff
         aYQg==
X-Gm-Message-State: AOJu0YzWzNpEdh/z4ve0ZtcjPe4tlGPWOD7UOjaRPzSthErvV07VqUOV
	6KmDQt0GTthNtHn+sWsHuO3VEEvhKflJyZVeTT/b1MFR8uui1vr5kxAL7w==
X-Google-Smtp-Source: AGHT+IHHQg9Kh2E7/eTHGLoBz5Z7+sbpR9yNVL3gKNIl6KM5UzEjpgSBsZa59ACHgQMjMPQzMiql5w==
X-Received: by 2002:a05:6214:5092:b0:6aa:a63c:f5b3 with SMTP id 6a1803df08f44-6aaa63cf8e4mr122015606d6.25.1716338823183;
        Tue, 21 May 2024 17:47:03 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.192])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6a15f185520sm129245886d6.37.2024.05.21.17.47.02
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 May 2024 17:47:02 -0700 (PDT)
Message-ID: <2862204e-0827-47dd-b0b9-242fcef9cbcf@gmail.com>
Date: Tue, 21 May 2024 20:46:51 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAKtd9vZ-PSEoxzJEd75a9+qi0G2KSS+mCFBONviF1vjNPi=xYQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAKtd9vZ-PSEoxzJEd75a9+qi0G2KSS+mCFBONviF1vjNPi=xYQ@mail.gmail.com>
Message-ID-Hash: SNCPEDJLG7L4T75UA6JYVNDGURSURDCZ
X-Message-ID-Hash: SNCPEDJLG7L4T75UA6JYVNDGURSURDCZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Recording and playing back RF Activity
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SNCPEDJLG7L4T75UA6JYVNDGURSURDCZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3694675359954170533=="

This is a multi-part message in MIME format.
--===============3694675359954170533==
Content-Type: multipart/alternative;
 boundary="------------01UO5xZ00iH01HO0FtDltp4g"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------01UO5xZ00iH01HO0FtDltp4g
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 21/05/2024 20:24, Hamid Niknami via USRP-users wrote:
>
> Hi,
>
> I am very new to SDR. I need a low cost solution to record all the=20
> interferences in the 100MHz band of the 2.4GHz ISM band (created by=20
> multiple WiFi and Bluetooth devices) and then play it back to emulate=20
> the interference. I do not need to decode those signals. I am thinking=20
> of using B200 for down converting to base band, recording on a SSD and=20
> then playing back the recorded signal using the B200 for upconverting=20
> to 2.4GHz. Considering the fact that B200 cannot cover the whole=20
> 100MHz BW, I am thinking of using three B200 with synchronized=20
> triggers, each set to a different band.
>
> A few questions:
>
> - Will such a scheme work?
>
> - If yes, is there any GNU Radio Flow graph readily available for it?
>
> - If yes, what issues/headaches shall I expect to be ready to deal with=
?
>
> - Can multiple B200 be programmed to work in sync? If yes, what is the=20
> recommended source for generating the synchronization pulse? (another=20
> B200?) Any schematic for the needed HW connections for synchronization?
>
> -=C2=A0If the above approach is not going to work, what other low cost=20
> solution do you suggest?
>
> Thanks.
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Depends on what you mean by "synchronization".=C2=A0=C2=A0 If you mean "O=
K, B200s,=20
please all start recording now", that is easily
 =C2=A0 accomplished using timed commands, and an initial setup that sets=
=20
their timestamp clocks to the same value using
 =C2=A0 a 1PPS input.

IF you need all B200 devices to be mutual *phase coherent* with one=20
another, that's considerably more challenging.

Recording 100MHz of bandwidth on a single (cheap, it sounds like) PC is=20
also going to be challenging.=C2=A0 Even if you only record
 =C2=A0 8-bit samples, that's 200Mbyte/second.


--------------01UO5xZ00iH01HO0FtDltp4g
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 21/05/2024 20:24, Hamid Niknami via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAKtd9vZ-PSEoxzJEd75a9+qi0G2KSS+mCFBONviF1vjNPi=3DxYQ@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <p
style=3D"box-sizing:border-box;margin-top:0px;color:rgb(53,60,65);font-fa=
mily:Inter,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,H=
elvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Em=
oji&quot;,&quot;Segoe UI Symbol&quot;;font-size:14px">Hi,</p>
        <p
style=3D"box-sizing:border-box;color:rgb(53,60,65);font-family:Inter,-app=
le-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,Helvetica,Arial,=
sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot=
;Segoe UI Symbol&quot;;font-size:14px">I
          am very new to SDR. I need a low cost solution to record all
          the interferences in the 100MHz band of the 2.4GHz ISM band
          (created by multiple WiFi and Bluetooth devices) and then play
          it back to emulate the interference. I do not need to decode
          those signals. I am thinking of using B200 for down converting
          to base band, recording on a SSD and then playing back the
          recorded signal using the B200 for upconverting to 2.4GHz.
          Considering the fact that B200 cannot cover the whole 100MHz
          BW, I am thinking of using three B200 with synchronized
          triggers, each set to a different band.</p>
        <p
style=3D"box-sizing:border-box;color:rgb(53,60,65);font-family:Inter,-app=
le-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,Helvetica,Arial,=
sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot=
;Segoe UI Symbol&quot;;font-size:14px">A
          few questions:</p>
        <p
style=3D"box-sizing:border-box;color:rgb(53,60,65);font-family:Inter,-app=
le-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,Helvetica,Arial,=
sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot=
;Segoe UI Symbol&quot;;font-size:14px">-
          Will such a scheme work?</p>
        <p
style=3D"box-sizing:border-box;color:rgb(53,60,65);font-family:Inter,-app=
le-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,Helvetica,Arial,=
sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot=
;Segoe UI Symbol&quot;;font-size:14px">-
          If yes, is there any GNU Radio Flow graph readily available
          for it?</p>
        <p
style=3D"box-sizing:border-box;color:rgb(53,60,65);font-family:Inter,-app=
le-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,Helvetica,Arial,=
sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot=
;Segoe UI Symbol&quot;;font-size:14px">-
          If yes, what issues/headaches shall I expect to be ready to
          deal with?</p>
        <p
style=3D"box-sizing:border-box;color:rgb(53,60,65);font-family:Inter,-app=
le-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,Helvetica,Arial,=
sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot=
;Segoe UI Symbol&quot;;font-size:14px">-
          Can multiple B200 be programmed to work in sync? If yes, what
          is the recommended source for generating the synchronization
          pulse? (another B200?) Any schematic for the needed HW
          connections for synchronization?</p>
        <p
style=3D"box-sizing:border-box;color:rgb(53,60,65);font-family:Inter,-app=
le-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,Helvetica,Arial,=
sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot=
;Segoe UI Symbol&quot;;font-size:14px">-=C2=A0If
          the above approach is not going to work, what other low cost
          solution do you suggest?=C2=A0</p>
        <p
style=3D"box-sizing:border-box;margin-bottom:0px;color:rgb(53,60,65);font=
-family:Inter,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Robot=
o,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI=
 Emoji&quot;,&quot;Segoe UI Symbol&quot;;font-size:14px">Thanks.</p>
      </div>
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
    Depends on what you mean by "synchronization".=C2=A0=C2=A0 If you mea=
n "OK,
    B200s, please all start recording now", that is easily<br>
    =C2=A0 accomplished using timed commands, and an initial setup that s=
ets
    their timestamp clocks to the same value using<br>
    =C2=A0 a 1PPS input.<br>
    <br>
    IF you need all B200 devices to be mutual *phase coherent* with one
    another, that's considerably more challenging.<br>
    <br>
    Recording 100MHz of bandwidth on a single (cheap, it sounds like) PC
    is also going to be challenging.=C2=A0 Even if you only record<br>
    =C2=A0 8-bit samples, that's 200Mbyte/second.<br>
    <br>
    <br>
  </body>
</html>

--------------01UO5xZ00iH01HO0FtDltp4g--

--===============3694675359954170533==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3694675359954170533==--
