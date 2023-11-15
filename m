Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 586457ECEB8
	for <lists+usrp-users@lfdr.de>; Wed, 15 Nov 2023 20:44:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 64967384CA5
	for <lists+usrp-users@lfdr.de>; Wed, 15 Nov 2023 14:44:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700077471; bh=btFCUmDmGa8S8G8OVuloWnxgH1OaRDXnUQxK1thEZFI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=AUw2kXYjqvW0jQDVdQ/S9z952KIYVb3lQ/D3oyVLWReWkT52vSigTaFSixdqPxjQy
	 pJQYsDj72WS6EvZlYh5z8xDFvYrgr8c2it3afbSt3IeB+n82sHJOOiqmiM6YuRRA/q
	 nltWl1p2NQskvgKo7aoyR1HWsvusqYXGnG6mZRJPhPbUlQGlx+r8nVJFIZ4hwwxEdF
	 oTSMC3i9tGzwcY8nusvj394LZdIFABzVVLWVNsqRDSh3qdgmcAuKGV4QeqA5Phj7Ub
	 I53kVLN/f7tOoZmmUYYBoMa6yxzn/yxB9gB5RTinZeXbDdC7xJJSO7VmDtTRvbZB3M
	 KuKzj0EFGw1eg==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 6EE40384A4F
	for <usrp-users@lists.ettus.com>; Wed, 15 Nov 2023 14:43:55 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UTdi6Icv";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-77bb668d941so436484685a.3
        for <usrp-users@lists.ettus.com>; Wed, 15 Nov 2023 11:43:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700077434; x=1700682234; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xnfw4SVzU7DM8K6jm0t7Jptsth7Ts5Bi7vCSB/ijOdE=;
        b=UTdi6Icv+5Xy/yVsl6ObaBDEu5JuGhdzxvPWwtKWddQ8BLhvzh1/xF+94yDEHIYvrV
         nXjCgY1Mx4uVss09ML7mXoGSUUWF5rIb6wT2rIvoGduxPG5rFCu6GjTzztw1wrPQGyY7
         CFdxH2nB64Z/37DfR8CEAO5rnTxaBSqpOmUj5+9jGbOxybJjoXsd5gO8Sbo/EBbBl3zQ
         xZQySrZZJiOnfSVSiLEfOHr5vyGpArmVzMhbkOlFOrO9cGyIDiGhqtBQkKCU4J1xBWQX
         VvoOwu8uB7gaPGgjfCPHX03hcj7m8GvrkbdEUEd7BXYRhVW8W7cmPSzjAT0jLA0kS5/b
         Un2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700077434; x=1700682234;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Xnfw4SVzU7DM8K6jm0t7Jptsth7Ts5Bi7vCSB/ijOdE=;
        b=MjnSl48bo2fJ3W7XdQTy8iRjckQW8U6PbeYOKAPJLw2n0sFluml+YqxFNYm43wnnI1
         hxWSANLXmNkfLGB3kX5FwxWLUhWqEJ7ohe/3s6S7SENXtIA+VHFDwel56TtF7ysNwMQ7
         OmzHu8x5xWY3VH91GT3n0doTmyV63yo5r9uyARFGLIV3DSCDn09OreKVvdbdSgjW1URH
         tV2wNNJf3p0ELHzTNH0neCv0zmCSic7rjmhWKf3+gViWelhz7h8iFjmAdo+7UHNzNivb
         Fq2GONPx4eM1jzscuEmfdIGkEc7X+OIuNKZ3eyfT8n5yd5aWWPxCEcPF5/DjFFYgMuPc
         UJqg==
X-Gm-Message-State: AOJu0YwaL0pVyaX8+2WLLI3D5V8ke7n0OPQhZys6I9qYuWD27OUI1OCJ
	bEjqqwQGLOgO1OedVwc3wwSgODFrM0A=
X-Google-Smtp-Source: AGHT+IG8TcNqehNpBs+3rQ3DUHAmV2FQ/nfnHkz56dT55RH5q0YYjjmQBUFH8RujuqJrm6UqVUnrWA==
X-Received: by 2002:a05:620a:4046:b0:77b:dd1d:2ae4 with SMTP id i6-20020a05620a404600b0077bdd1d2ae4mr7002354qko.4.1700077434566;
        Wed, 15 Nov 2023 11:43:54 -0800 (PST)
Received: from [192.168.2.170] ([174.88.54.173])
        by smtp.googlemail.com with ESMTPSA id tn12-20020a05620a3c0c00b0076cb3690ae7sm3696442qkn.68.2023.11.15.11.43.53
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Nov 2023 11:43:54 -0800 (PST)
Message-ID: <e01ec84f-559f-4e09-97fa-13de71a19a91@gmail.com>
Date: Wed, 15 Nov 2023 14:43:45 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <G4WoAsBKwV6sDkkMhozMRarTEkfNz1TqJTT3KfWU4@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <G4WoAsBKwV6sDkkMhozMRarTEkfNz1TqJTT3KfWU4@lists.ettus.com>
Message-ID-Hash: JWG3HKGDCCBXKIGMSWB4C4OAGR7H63HN
X-Message-ID-Hash: JWG3HKGDCCBXKIGMSWB4C4OAGR7H63HN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 stuck in reboot
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JWG3HKGDCCBXKIGMSWB4C4OAGR7H63HN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4183929586572883908=="

This is a multi-part message in MIME format.
--===============4183929586572883908==
Content-Type: multipart/alternative;
 boundary="------------CP0ontPEBIfg00fkFNUPk4Iz"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------CP0ontPEBIfg00fkFNUPk4Iz
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 15/11/2023 13:54, jmaloyan@umass.edu wrote:
>
> I do have access to two x410s. The bitstream I tried to upload on this=20
> currently none working device was CG bitstream, when prior to this it=20
> was an X4 bitstream. Im obviously hesitant to try something similar on=20
> the working device right now, but my current guess right now is that=20
> ssh is not starting.
>
Ah, this is critical information.

My guess is that whatever filesystem image you re-flashed is broken in=20
some way so that sshd.service isn't there.

Presumably, you can ping the device?=C2=A0 I was previously left with the=
=20
impression that there was NO network connectivity
 =C2=A0 to the device.


>
> For example, if I use |systemctl -l --type service --all|grep ssh| , i=20
> get the following for the non-working and working x410s
>
> Non-working:
>
> * sshd.service not-found inactive dead sshd.service
>
> sshd@0.service loaded inactive dead OpenSSH Per-Connection Daemon
>
> sshdgenkeys.service loaded active exited OpenSSH Key Generation
>
> Working :
>
> =E2=97=8F sshd.service not-found inactive dead sshd.service
>
> sshd@3-192.168.10.2:22-192.168.10.1:45278.service loaded active=20
> running OpenSSH Per-Connection Daemon (192.168.10.1:45278)
>
> sshdgenkeys.service loaded active exited OpenSSH Key Generation
>
> It appears the sshd session was able to start on the working device,=20
> but for whatever reason-even after re-flashing- the non-working device=20
> is unable to start ssh, though I am not sure how to manually start it.
>
> I have tried using |systemctl| to start it, but I just get met with an=20
> error that the sshd service is not found
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------CP0ontPEBIfg00fkFNUPk4Iz
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 15/11/2023 13:54, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.ed=
u</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:G4WoAsBKwV6sDkkMhozMRarTEkfNz1TqJTT3KfWU4@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>I do have access to two x410s. The bitstream I tried to upload
        on this currently none working device was CG bitstream, when
        prior to this it was an X4 bitstream. Im obviously hesitant to
        try something similar on the working device right now, but my
        current guess right now is that ssh is not starting.</p>
    </blockquote>
    Ah, this is critical information.<br>
    <br>
    My guess is that whatever filesystem image you re-flashed is broken
    in some way so that sshd.service isn't there.=C2=A0 <br>
    <br>
    Presumably, you can ping the device?=C2=A0 I was previously left with=
 the
    impression that there was NO network connectivity<br>
    =C2=A0 to the device.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:G4WoAsBKwV6sDkkMhozMRarTEkfNz1TqJTT3KfWU4@lists.ettus.com">
      <p><br>
      </p>
      <p>For example, if I use <code>systemctl -l --type service
          --all|grep ssh</code> , i get the following for the
        non-working and working x410s</p>
      <p>Non-working:</p>
      <p>* sshd.service not-found inactive dead sshd.service </p>
      <p><a class=3D"moz-txt-link-abbreviated" href=3D"mailto:sshd@0.serv=
ice">sshd@0.service</a> loaded inactive dead OpenSSH Per-Connection
        Daemon </p>
      <p>sshdgenkeys.service loaded active exited OpenSSH Key Generation<=
/p>
      <p>Working :</p>
      <p>=E2=97=8F sshd.service not-found inactive dead sshd.service </p>
      <p> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:sshd@3-192=
.168.10.2:22-192.168.10.1:45278.service">sshd@3-192.168.10.2:22-192.168.1=
0.1:45278.service</a> loaded
        active running OpenSSH Per-Connection Daemon
        (192.168.10.1:45278)</p>
      <p> sshdgenkeys.service loaded active exited OpenSSH Key
        Generation</p>
      <p>It appears the sshd session was able to start on the working
        device, but for whatever reason-even after re-flashing- the
        non-working device is unable to start ssh, though I am not sure
        how to manually start it.</p>
      <p>I have tried using <code>systemctl</code> to start it, but I
        just get met with an error that the sshd service is not found </p=
>
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

--------------CP0ontPEBIfg00fkFNUPk4Iz--

--===============4183929586572883908==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4183929586572883908==--
