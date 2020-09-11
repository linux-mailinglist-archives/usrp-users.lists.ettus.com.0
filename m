Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 58AD626672C
	for <lists+usrp-users@lfdr.de>; Fri, 11 Sep 2020 19:39:12 +0200 (CEST)
Received: from [::1] (port=55938 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kGn0u-0000uX-Fe; Fri, 11 Sep 2020 13:39:08 -0400
Received: from mail-qk1-f182.google.com ([209.85.222.182]:40511)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kGn0q-0000jz-Lz
 for USRP-users@lists.ettus.com; Fri, 11 Sep 2020 13:39:04 -0400
Received: by mail-qk1-f182.google.com with SMTP id w16so10651590qkj.7
 for <USRP-users@lists.ettus.com>; Fri, 11 Sep 2020 10:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=WrSxee5owFbIb0Bppb+oYKPHJiXNEultYsE997NXbao=;
 b=PBBoScMCrcSAiVmTxdXcxp1NKWC4w3xQXT48/HI/8A4qRDnu4SoXVudb37Am37nADt
 dV05bvClk8oRLVvJjnIwm/+oOuTMn3h5hay3EqmjljlQZ/jXr3n/OmlI4OpYYG5p4U5S
 M8cay8rM3UZWViQ0imw0mSnBIcuGASn4DczKIS/1rxzPXqEw7IGdJNCAlnplYtEnWdxo
 v2pPVpYj9VK65kcmM8d4aSvvImHm9xoTzTGEnCb+B628CPp+LMfRizOwhdtrQSBs9Hj6
 m6cATDnab4vPz3PBSUstrjTFaSAzoukRGL6G1tpDt64QntygQKHdFA9tc75vTvvhigV6
 S9xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=WrSxee5owFbIb0Bppb+oYKPHJiXNEultYsE997NXbao=;
 b=dV7lX1M2Zp1wK/JkzZYkNNAgC53ed+AZ4zqR7YnsmRhEYFpJbGnWHhCOBgmc4Y35ii
 zjljQ39LyGxYZX0GF9kIzxnVgEObTmYMnzxF5C4GQs5zMl1EwX2isaGB2mrpFnb4DCag
 cLzONoTpmwLqeUnBvafC6Xt6BvYcGG9Ckx++d9HJnFgHF+YXeuTK5GZ1u3hk7cy9dNER
 bFNC2KCxcXealkHEQeR3Omt4IMIiJGvtCnkmabP0D1q7gY7oSiH6ENjqsZwwzE3dTYPh
 NkzF7tYvg0qlV+VAUe5IlcArQk/cl2ILRHHQgHCKUf8Rn8Lm6j9wxN/FjlLgSIqxOwnI
 3CKA==
X-Gm-Message-State: AOAM531gesVuQ50VW+KLZr+4OCy6gegY0KqbtfZ4EE4d2sbZ4V1ghdy/
 2rRc0uitWNt14QoMdnrBc5k=
X-Google-Smtp-Source: ABdhPJwKWUmW4bHNtmqSJ6OK7nM7ZZSlwy9xhuFTQ6fdU3/e7fvr5Xc9zg/+eeuP0qerBK7PJ0OpXA==
X-Received: by 2002:a37:9746:: with SMTP id z67mr2412476qkd.425.1599845904038; 
 Fri, 11 Sep 2020 10:38:24 -0700 (PDT)
Received: from [192.168.2.29]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.gmail.com with ESMTPSA id l92sm1656432qte.38.2020.09.11.10.38.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 11 Sep 2020 10:38:23 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Fri, 11 Sep 2020 13:38:23 -0400
Message-Id: <95DB5B7C-BC71-4222-992C-41DBE2F7B0FA@gmail.com>
References: <24fbcdd2-35fd-9d14-1c17-7a05d0d2a4e1@gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <24fbcdd2-35fd-9d14-1c17-7a05d0d2a4e1@gmail.com>
To: David Evans <dasypuss@gmail.com>
X-Mailer: iPhone Mail (17G80)
Subject: Re: [USRP-users] b200mini stops sampling
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============6594015229068836220=="
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


--===============6594015229068836220==
Content-Type: multipart/alternative; boundary=Apple-Mail-2FD8ECDF-0B47-440D-8B7C-7E092DB95A4E
Content-Transfer-Encoding: 7bit


--Apple-Mail-2FD8ECDF-0B47-440D-8B7C-7E092DB95A4E
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

That should be fine.=20

GIT is arcane. Others have more facility with it than I.=20

Sent from my iPhone

> On Sep 11, 2020, at 12:07 PM, David Evans via USRP-users <usrp-users@lists=
.ettus.com> wrote:
>=20
> =EF=BB=BF Thanks Marcus,
>=20
> Sorry,, I know this isn't the place, but when i check out a version I get "=
detached head...".
> I also don't want to check anything back in, do I ignore this (I've never u=
nderstood what detached head means, even after looking it up!).
>=20
> Cheers,
> Dave
>=20
> On 10/09/2020 16:43, Marcus D. Leech via USRP-users wrote:
>> On 09/10/2020 08:55 AM, David Evans via USRP-users wrote:
>>> Hi,
>>> I have just installed the latest "master" branch of UHD (4.0.0.0).
>>>=20
>>> If an overrun occurs during sampling, sampling does not continue thereaf=
ter.
>>> I noticed this with uhd_fft, which hangs with rates over 8MHz, and also r=
x_samples_to_file:
>>>=20
>>> ./rx_samples_to_file --freq 900000000 --rate 40000000
>>>=20
>>> Creating the usrp device with: ...
>>> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-34-=
g2655b0aa
>>> [INFO] [B200] Detected Device: B200mini
>>> [INFO] [B200] Operating over USB 3.
>>> [INFO] [B200] Initialize CODEC control...
>>> [INFO] [B200] Initialize Radio control...
>>> [INFO] [B200] Performing register loopback test...
>>> [INFO] [B200] Register loopback test passed
>>> [INFO] [B200] Setting master clock rate selection to 'automatic'.
>>> [INFO] [B200] Asking for clock rate 16.000000 MHz...
>>> [INFO] [B200] Actually got clock rate 16.000000 MHz.
>>> Using Device: Single USRP:
>>>   Device: B-Series Device
>>>   Mboard 0: B200mini
>>>   RX Channel: 0
>>>     RX DSP: 0
>>>     RX Dboard: A
>>>     RX Subdev: FE-RX1
>>>   TX Channel: 0
>>>     TX DSP: 0
>>>     TX Dboard: A
>>>     TX Subdev: FE-TX1
>>>=20
>>> Setting RX Rate: 40.000000 Msps...
>>> [INFO] [B200] Asking for clock rate 40.000000 MHz...
>>> [INFO] [B200] Actually got clock rate 40.000000 MHz.
>>> Actual RX Rate: 40.000000 Msps...
>>>=20
>>> Setting RX Freq: 900.000000 MHz...
>>> Setting RX LO Offset: 0.000000 MHz...
>>> Actual RX Freq: 900.000000 MHz...
>>>=20
>>> Waiting for "lo_locked": ++++++++++ locked.
>>>=20
>>> Press Ctrl + C to stop streaming...
>>> OGot an overflow indication. Please consider the following:
>>>   Your write medium must sustain a rate of 160.000000MB/s.
>>>   Dropped samples will not be written to the file.
>>>   Please modify this example for your purposes.
>>>   This message will not appear again.
>>> Timeout while streaming
>>>=20
>>> Done!
>>>=20
>>> Any ideas please? =20
>>> Should I be using the master branch, if not how do I checkout a stable b=
ranch ?
>>>=20
>>> Thanks,
>>> Dave
>>>=20
>>=20
>> You can get a list of tagged versions using:
>>=20
>> git tag
>>=20
>> Try again with:
>>=20
>> git checkout   v3.15.0.0
>>=20
>> Sometimes when the overruns are persistent and at very high rates, the so=
ftware is unable to recover, because so much information has been
>>   dropped, any recovery procedure would be roughly as drastic as having t=
o re-start.
>>=20
>>=20
>>=20
>>=20
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-2FD8ECDF-0B47-440D-8B7C-7E092DB95A4E
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">That should be fine.&nbsp;<div><br></div><d=
iv>GIT is arcane. Others have more facility with it than I.&nbsp;<br><br><di=
v dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=
=3D"cite">On Sep 11, 2020, at 12:07 PM, David Evans via USRP-users &lt;usrp-=
users@lists.ettus.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D=
"cite"><div dir=3D"ltr">=EF=BB=BF
 =20
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
 =20
 =20
    Thanks Marcus,<br>
    <br>
    Sorry,, I know this isn't the place, but when i check out a version
    I get "detached head...".<br>
    I also don't want to check anything back in, do I ignore this (I've
    never understood what detached head means, even after looking it
    up!).<br>
    <br>
    Cheers,<br>
    Dave<br>
    <br>
    <div class=3D"moz-cite-prefix">On 10/09/2020 16:43, Marcus D. Leech
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:5F5A498A.8060202@gmail.com">
      <meta content=3D"text/html; charset=3Dwindows-1252" http-equiv=3D"Cont=
ent-Type">
      <div class=3D"moz-cite-prefix">On 09/10/2020 08:55 AM, David Evans
        via USRP-users wrote:<br>
      </div>
      <blockquote cite=3D"mid:d0a3da7b-2ecc-b56b-f405-f1a0c9547906@gmail.com=
" type=3D"cite">
        <meta http-equiv=3D"content-type" content=3D"text/html;
          charset=3Dwindows-1252">
        Hi,<br>
        I have just installed the latest "master" branch of UHD
        (4.0.0.0).<br>
        <br>
        If an overrun occurs during sampling, sampling does not continue
        thereafter.<br>
        I noticed this with uhd_fft, which hangs with rates over 8MHz,
        and also rx_samples_to_file:<br>
        <br>
        ./rx_samples_to_file --freq 900000000 --rate 40000000<br>
        <br>
        Creating the usrp device with: ...<br>
        [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
        UHD_4.0.0.0-34-g2655b0aa<br>
        [INFO] [B200] Detected Device: B200mini<br>
        [INFO] [B200] Operating over USB 3.<br>
        [INFO] [B200] Initialize CODEC control...<br>
        [INFO] [B200] Initialize Radio control...<br>
        [INFO] [B200] Performing register loopback test...<br>
        [INFO] [B200] Register loopback test passed<br>
        [INFO] [B200] Setting master clock rate selection to
        'automatic'.<br>
        [INFO] [B200] Asking for clock rate 16.000000 MHz...<br>
        [INFO] [B200] Actually got clock rate 16.000000 MHz.<br>
        Using Device: Single USRP:<br>
        &nbsp; Device: B-Series Device<br>
        &nbsp; Mboard 0: B200mini<br>
        &nbsp; RX Channel: 0<br>
        &nbsp;&nbsp;&nbsp; RX DSP: 0<br>
        &nbsp;&nbsp;&nbsp; RX Dboard: A<br>
        &nbsp;&nbsp;&nbsp; RX Subdev: FE-RX1<br>
        &nbsp; TX Channel: 0<br>
        &nbsp;&nbsp;&nbsp; TX DSP: 0<br>
        &nbsp;&nbsp;&nbsp; TX Dboard: A<br>
        &nbsp;&nbsp;&nbsp; TX Subdev: FE-TX1<br>
        <br>
        Setting RX Rate: 40.000000 Msps...<br>
        [INFO] [B200] Asking for clock rate 40.000000 MHz...<br>
        [INFO] [B200] Actually got clock rate 40.000000 MHz.<br>
        Actual RX Rate: 40.000000 Msps...<br>
        <br>
        Setting RX Freq: 900.000000 MHz...<br>
        Setting RX LO Offset: 0.000000 MHz...<br>
        Actual RX Freq: 900.000000 MHz...<br>
        <br>
        Waiting for "lo_locked": ++++++++++ locked.<br>
        <br>
        Press Ctrl + C to stop streaming...<br>
        OGot an overflow indication. Please consider the following:<br>
        &nbsp; Your write medium must sustain a rate of 160.000000MB/s.<br>
        &nbsp; Dropped samples will not be written to the file.<br>
        &nbsp; Please modify this example for your purposes.<br>
        &nbsp; This message will not appear again.<br>
        <b>Timeout while streaming</b><br>
        <br>
        Done!<br>
        <br>
        Any ideas please?&nbsp; <br>
        Should I be using the master branch, if not how do I checkout a
        stable branch ?<br>
        <br>
        Thanks,<br>
        Dave<br>
        <br>
      </blockquote>
      <br>
      You can get a list of tagged versions using:<br>
      <br>
      git tag<br>
      <br>
      Try again with:<br>
      <br>
      git checkout&nbsp;&nbsp; v3.15.0.0<br>
      <br>
      Sometimes when the overruns are persistent and at very high rates,
      the software is unable to recover, because so much information has
      been<br>
      &nbsp; dropped, any recovery procedure would be roughly as drastic as
      having to re-start.<br>
      <br>
      <br>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">_______________________________=
________________
USRP-users mailing list
<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:USRP-users@lists.ettus.=
com">USRP-users@lists.ettus.com</a>
<a class=3D"moz-txt-link-freetext" href=3D"http://lists.ettus.com/mailman/li=
stinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/u=
srp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
 =20

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></body></html>=

--Apple-Mail-2FD8ECDF-0B47-440D-8B7C-7E092DB95A4E--


--===============6594015229068836220==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6594015229068836220==--

