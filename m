Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB881BB9B7
	for <lists+usrp-users@lfdr.de>; Tue, 28 Apr 2020 11:21:03 +0200 (CEST)
Received: from [::1] (port=58264 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jTMQF-00016c-22; Tue, 28 Apr 2020 05:20:59 -0400
Received: from mail-wr1-f45.google.com ([209.85.221.45]:40154)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1jTMQB-0000xN-Ew
 for usrp-users@lists.ettus.com; Tue, 28 Apr 2020 05:20:55 -0400
Received: by mail-wr1-f45.google.com with SMTP id k13so23790645wrw.7
 for <usrp-users@lists.ettus.com>; Tue, 28 Apr 2020 02:20:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=BZFfWs3Xuk6XKd4PmvpiyVvjkVc+brDKV+vlvyAj/aA=;
 b=lx6qqe9T0TdShCRhME13BMhEjNTvvW0bBH/N3adikuz+aFVShgpfrcows3NO0ESBfS
 IOC2QrRu1bcJpOkNWGqvoA8CkKxbFzmbE9HhbId1lyBwNBE0qZRgR8aui7SSy0V7V3Mu
 M9HIwwvv8wlR0xs2V+y1zK0pEdQ5OOmlRBC8mlI7K4XVC6MSxav2XRDvKxkCjNICtVFs
 KpCjSYP/4do4w9htbQmaxRDWoTVhjpow4vaHUMqczXyrAhJXPyHDGnCkyS1hC3LHW3Fc
 B2sXFnXt0yRs+7V06eoHeh/LaYQ5a6jmnuDxcXMOs7/D1UtICQSejT/x52V1kuUiGCFp
 85bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=BZFfWs3Xuk6XKd4PmvpiyVvjkVc+brDKV+vlvyAj/aA=;
 b=KTd7KORDa+NRZgiXPeYy+W0yPutNz+1Pw6M0PPCxIK79D0dW+HfHR97xiaYgrOMRfV
 tTP35bLT9eiGVcONyY0jQ7L5oGefJWJUKo16Mm0nvUEXEWQZrDpj5gIb01cbol2A97kb
 tTWw0r9aKz6fFaf01811UGuew0YX9nPFb9fzwr9WNE5KUt/qE3AwV5leEoNPodrlPR7T
 IqU1jp+aNPJX1SuHWiQMaxye/mZqdwL23W8aSggJrq6tqU8uKSYMmolyNW2CvbRZwNC4
 jaef39kYe9sQgAv6Oj6p8zL5cqEJIQN8+VUU5ZZ7Wh0u4hTbGKZn4I4Jk6sQ2Q7afBAg
 85Kg==
X-Gm-Message-State: AGi0PubefZ++XB+5CjGNpIWlsre04Hb2zdl2n+ZxOPEMW2Jn4JI3uDzu
 3sfpVmbvCNhQnUddnhFFOHygvGnSu/XglA==
X-Google-Smtp-Source: APiQypLXjODWUgzZAsP4BJE7y4dwa1d3c5p5lCKf0GRIdbII3p7Xe6d2t22ExCKEexzjulutHZ8KKA==
X-Received: by 2002:adf:9d83:: with SMTP id p3mr33215866wre.142.1588065614015; 
 Tue, 28 Apr 2020 02:20:14 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-150.hsi.kabel-badenwuerttemberg.de. [46.223.163.150])
 by smtp.gmail.com with ESMTPSA id o7sm2383590wmh.46.2020.04.28.02.20.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Apr 2020 02:20:13 -0700 (PDT)
To: Joshua Monson <jmonson@isi.edu>,
 "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <BLAPR16MB39050504D7428A8AEADD2250A7AF0@BLAPR16MB3905.namprd16.prod.outlook.com>
Message-ID: <fa5ec475-71a0-f82c-2bbf-71355cc96d68@ettus.com>
Date: Tue, 28 Apr 2020 11:20:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <BLAPR16MB39050504D7428A8AEADD2250A7AF0@BLAPR16MB3905.namprd16.prod.outlook.com>
Content-Language: en-US
Subject: Re: [USRP-users] Remote Power Cycle of the E310/E312
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
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

Hey Joshua,

the firmware can be found in the UHD source code repo under
firmware/e310/battery. If I remember correctly, you'll need avr-gcc,
avr-libc and avrdude (the latter only for flashing using the `make
install` target).

Note that the software is a bit tight on space on the Attiny88 =96 so
maybe try to avoid integrating too many features without removing
anything ;)

Best regards,
Marcus

On 27.04.20 16:20, Joshua Monson via USRP-users wrote:
> Hello,
> =

> =A0
> =

> Under the current (COVID19) circumstances, I am having to use my
> E310/E312=92s remotely. I have them connected to a remotely controllable
> PDU that allows me to power cycle the E310 devices when they
> occasionally crash (as long as they have been switched on once).
> However, the battery-backed E312s do not respond to the power-cycling in
> the same way the E310s do and thus I am cannot power-cycle them. We
> disconnected the battery and tested the remote power-cycling to no
> avail. Is there a version of the AVR code that would allow me to disable
> the battery and use the input power to power-cycle the device? (I could
> go into the office to reflash the AVR). Alternatively, could I recompile
> the AVR code with different parameters to force this behavior?
> =

> =A0
> =

> Thanks,
> =

> =

> Josh
> =

> =A0
> =

> =

> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> =


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
