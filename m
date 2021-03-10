Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 21AC9334C81
	for <lists+usrp-users@lfdr.de>; Thu, 11 Mar 2021 00:27:40 +0100 (CET)
Received: from [::1] (port=46152 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lK8Es-0001lY-NF; Wed, 10 Mar 2021 18:27:38 -0500
Received: from mail-qk1-f171.google.com ([209.85.222.171]:39928)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1lK8Ep-0001f0-H3
 for usrp-users@lists.ettus.com; Wed, 10 Mar 2021 18:27:35 -0500
Received: by mail-qk1-f171.google.com with SMTP id g185so18834135qkf.6
 for <usrp-users@lists.ettus.com>; Wed, 10 Mar 2021 15:27:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=c2Em7bl43IbJ46gRUszFcX+bwnRlrSasNCCNSdQK3UE=;
 b=i6AhZADcX7yMZAuLr8ZFy1dpEtlIR5d1WgAMyI2ovi0G93LBj3u1wKvMiqm9xtDdjp
 KLaniejR7KUjXVc0bGKBCXkzwFaFtSxyXgUDds3QRwjLVwE6TaHD/P+n2tkqDmVPl8OL
 BT2SGymCHYRp2BMcOs9iDzlNB5J7Qh+Suv3ntp7atzFEknewsSC10/+Ma3WvJ0+Ipi8P
 4smjsXW77NAMVuXwKGAZPP1vkrfrhJBlsZjy6D82XsyJ5i7jXckjWOxw7Sfc4q1ev0Vm
 foicHCExQsx4FhcmPiomOIZ7saenDZhuM7Jt3VIYDwrtHdiShjEKIAqzpJc0c/Ef+Nvm
 AqqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=c2Em7bl43IbJ46gRUszFcX+bwnRlrSasNCCNSdQK3UE=;
 b=YVU/IDfdrYgshVM95w524KRKyBdF88xa/XNOyd2y1fZimCCjb6iN+Ar2IWRYWLxtWt
 3hkGHchKUYxw1ybrjQm02P+2trGcU4hBxOPyAP9wOt/hf3gYeg2ki6X1EkhndsvKTqhK
 V+nsUcsbDGMmUg6QvvXQJHouGvYdWDfOfIhFmrgvRUJqmXNvNO8YIRPclhpMg8CStGb6
 nZ/bYoWKWYRYUykFCoaySuiu4UGapCMxJpEYu7TS3mncmWW5ja2nwTUirv4xgIE2CjBA
 y6en//psO2LvvGp1DFNPUYUdp9tdFpTcp9u8uqUvyivvpybZuPyY4od9BAT/RBwbZXXB
 xjFw==
X-Gm-Message-State: AOAM531/LZ0+d8N2NDsde6wIWv2naJIEiCpfeFGLKjwP5macnAIPGPlM
 bkbZ5Bs05uuauQv3jMfHwoQOwtnePRE=
X-Google-Smtp-Source: ABdhPJwbvg4MDIkAaPE9pfseHpjnwrEZFb4qVoTH2LSO7eIyDaVRAqgeys2qv8j5etpGnGnFXEWN1Q==
X-Received: by 2002:ae9:f719:: with SMTP id s25mr5169168qkg.42.1615418814654; 
 Wed, 10 Mar 2021 15:26:54 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
 by smtp.googlemail.com with ESMTPSA id k4sm675101qke.13.2021.03.10.15.26.54
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Mar 2021 15:26:54 -0800 (PST)
Message-ID: <604955BD.9030008@gmail.com>
Date: Wed, 10 Mar 2021 18:26:53 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <8b669b86247f41399f2c60a491048865@gmvnsl.com>
 <CAB__hTTx=KQV1JWQPcbac_pwdeSNy5Z7vAPcY01vaAeO3BbYbQ@mail.gmail.com>
In-Reply-To: <CAB__hTTx=KQV1JWQPcbac_pwdeSNy5Z7vAPcY01vaAeO3BbYbQ@mail.gmail.com>
Subject: Re: [USRP-users] X310 with dual TwinRX set up
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============3426955538434975398=="
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
--===============3426955538434975398==
Content-Type: multipart/alternative;
 boundary="------------010308050300090507050108"

This is a multi-part message in MIME format.
--------------010308050300090507050108
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 03/10/2021 06:15 PM, Rob Kossler via USRP-users wrote:
> Hi Oliver,
> I don't have any example code to provide (and I don't use gnuradio), 
> but I can address a couple of things:
> - the first step is to get all four channels recognized (as you 
> indicated); perhaps using subdev spec "A:0 A:1 B:0 B:1"
> - synchronizing in time is definitely possible. From gnuradio, I 
> thought that it was the default for multi-channel operation.  You 
> might have to lookup a set_start_time or similar command. check the 
> uhd gnuradio documentation for usrp source 
> <https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__source.html>.
> - four channels at 100 MS/s is also achievable.  To use dual 10Gbe, 
> you need to specify the "second_addr" device arg as indicated here 
> <https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_hw_10gige>.
> Rob
>
Indeed, sample-level time synchronization among channels happens 
automatically for multi_usrp streams.

The suggested sub-dev string should work just fine as well.

In the uhd-usrp source in the "RF Options" you can set the tuned 
frequency for each channel.

Specify a "Num Channels" of 4 and a "num_mboards" of 1.



--------------010308050300090507050108
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 03/10/2021 06:15 PM, Rob Kossler via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAB__hTTx=KQV1JWQPcbac_pwdeSNy5Z7vAPcY01vaAeO3BbYbQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div dir="ltr">Hi Oliver,
          <div>I don't have any example code to provide (and I don't use
            gnuradio), but I can address a couple of things:</div>
          <div>- the first step is to get all four channels recognized
            (as you indicated); perhaps using subdev spec "A:0 A:1 B:0
            B:1"</div>
          <div>- synchronizing in time is definitely possible. From
            gnuradio, I thought that it was the default for
            multi-channel operation.  You might have to lookup a
            set_start_time or similar command. check the uhd gnuradio
            documentation for <a moz-do-not-send="true"
href="https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__source.html">usrp
              source</a>.</div>
          <div>- four channels at 100 MS/s is also achievable.  To use
            dual 10Gbe, you need to specify the "second_addr" device arg
            as indicated <a moz-do-not-send="true"
              href="https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_hw_10gige">here</a>.</div>
        </div>
        Rob
        <div><br>
        </div>
      </div>
    </blockquote>
    Indeed, sample-level time synchronization among channels happens
    automatically for multi_usrp streams.<br>
    <br>
    The suggested sub-dev string should work just fine as well.<br>
    <br>
    In the uhd-usrp source in the "RF Options" you can set the tuned
    frequency for each channel.<br>
    <br>
    Specify a "Num Channels" of 4 and a "num_mboards" of 1.<br>
    <br>
    <br>
  </body>
</html>

--------------010308050300090507050108--


--===============3426955538434975398==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3426955538434975398==--

