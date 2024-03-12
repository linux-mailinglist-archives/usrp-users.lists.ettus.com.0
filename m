Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 37534879DF9
	for <lists+usrp-users@lfdr.de>; Tue, 12 Mar 2024 23:00:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 891F0385779
	for <lists+usrp-users@lfdr.de>; Tue, 12 Mar 2024 18:00:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710280822; bh=l8ITSQ40FE7Unv3QO7c5Al3OMBNJFCjDgWrVNU39Msk=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=nN6ZjG14NFpkWMAEirHjMPPzSJmtNDbqtjgmXxpPHRTRW9ioBeNCBh9LtwTEZ2YAQ
	 8UQAxi006oHWsw71zFAjhOTsKuyJE/YygXFWjjl1eNycKtRKqsanm3T7SwAdSdsdlv
	 h/VFE2N0H8S7g7bz8eSB+B3uF2Xx9y+xpXwpgkbTQTiFRJLif9SnkgRKO42MTceYGZ
	 /Ov0U6XRhLFsdaEKnH6+9wKorJh67EjxLwzIjeMlVFbLfyYSaKdFKqy1xFQHqM7OAE
	 Cdo/6HuxAIwwmzyf9U874e2jQVo3b0pkGf/tIY5bjnggrD2E1/hlzU2qjr5uRvBCju
	 Sk5hbXaB58RMQ==
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	by mm2.emwd.com (Postfix) with ESMTPS id B210238556A
	for <usrp-users@lists.ettus.com>; Tue, 12 Mar 2024 18:00:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="HPIlyA0f";
	dkim-atps=neutral
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-33e76d653b5so292145f8f.3
        for <usrp-users@lists.ettus.com>; Tue, 12 Mar 2024 15:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1710280799; x=1710885599; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zIg7A3BwiiUCSKQtug92muxfxRqcNLoJliV4FIS4eZc=;
        b=HPIlyA0fEkn3ukzGXNja6Y0IIFKl1zEEKxN/Jwg38PtX4wN1M3ltX9MK4bzmmQJl81
         yCyjkzj+YDq9YooX8DZYaZ9P7bGhhXT2vgv6MobxDrF+C0Wsnx5vOBsr0zcpY1W64ZoI
         TwnzP1n8YrnQtYo67vmcfMkjCXlw6njbq+hZoBxf4adPoDX3+nbv236dPGjLnlzUbQ3O
         6ulEZN4em/Iw74/Q7FydxQzgit852VaiD0K+9r7oL/DctVxrdZkcL1/Zw9OUBibVvslv
         HUxs/qVZnB2icvTtAEb1m8KM3iT8cM1zzzXdbMzNVLvs7kRWGzC5jHIc5IIjdEHp4inm
         ZbsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710280799; x=1710885599;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zIg7A3BwiiUCSKQtug92muxfxRqcNLoJliV4FIS4eZc=;
        b=tETnIW8gMWhmyA+7niNWgqRV/JnX0c7dlMgelAwobsKBU8XYv7K4yCkAYoLpRWMN5Q
         vycte5C27/DixHvhgtcYDPb1osKR7APWxpgf3WkhTnu+Kc9UTWYvqrmAT2+AtW+slQbw
         easaB4MvWYP6iRzR0muc+Z2Y8B1cl6o1By6Qepr07uf1k6sGTG955UAjrcBzH9fjjqBe
         WgYn7XpByICV9gsgtUVcu/iVdJkkAi3BJRQ7FfzEeTyk4hDJwWrQhtyYtvEsLCaaWAb5
         AgOMFAtjAZ1lqENVM+lxUivKhDSXue406tpZd/zGciNlqfkBRd19DvmyiFg6p2qqcl1z
         Em1w==
X-Gm-Message-State: AOJu0Yw0ZoQ24GFOt0vSiR+ZMJALnnHEShAmEpAUjYlBuPIU/mRaDuVE
	BvhiZxAoHfv5Mk+KZRaA04i2nuTb/6vRJLYcVyTDoaH8FVP116pDPBTjGQJTJ9pMKes4BfwJldF
	Qe23rJT2HOSTD8LCBsDOtj+w3CcHdr6cuzEgD
X-Google-Smtp-Source: AGHT+IGnpNeUuQky2BzJ+vIrcu3y71owcBCW9CG0c+mLrVYO1al8gDBPRpL0qFlNaC89sCDoKoFXj9QMzl+HynK7aVs=
X-Received: by 2002:adf:fa4b:0:b0:33e:7a71:1a31 with SMTP id
 y11-20020adffa4b000000b0033e7a711a31mr427529wrr.6.1710280799441; Tue, 12 Mar
 2024 14:59:59 -0700 (PDT)
MIME-Version: 1.0
References: <bTN1Tg4QsmScf6SLVRoATiBNT2bp2o6x0s58Z8iA@lists.ettus.com>
 <d4e756e8-5874-48bd-97a6-64bc96b41ac2@gmail.com> <CAB__hTTbksjFybT9FEu2GahUYJoZtH3owd-zkzxDaWFVTRj2kA@mail.gmail.com>
In-Reply-To: <CAB__hTTbksjFybT9FEu2GahUYJoZtH3owd-zkzxDaWFVTRj2kA@mail.gmail.com>
Date: Tue, 12 Mar 2024 17:59:48 -0400
Message-ID: <CAB__hTQW4UuE9eaK5wn6eu4AbSE1ew-zrGO5JiR0kZA2hpwkaQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: UPMKOUNZ63IYMHS343Y26RZYFCE4YGSM
X-Message-ID-Hash: UPMKOUNZ63IYMHS343Y26RZYFCE4YGSM
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Extending duration of high-rate captures with the X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UPMKOUNZ63IYMHS343Y26RZYFCE4YGSM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============5454645379172948968=="

--===============5454645379172948968==
Content-Type: multipart/alternative; boundary="00000000000084a0c506137dc770"

--00000000000084a0c506137dc770
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I think I am mistaken. If you are only streaming a single channel, the
--multi_streamer option will likely not change a thing. I was assuming you
had multiple channels.
Rob

On Tue, Mar 12, 2024 at 5:40=E2=80=AFPM Rob Kossler <rkossler@nd.edu> wrote=
:

> Your mount command with tmpfs looks correct. Here is what mine is in my
> /etc/fstab file (with 264GB avail RAM)
> tmpfs  /media/ramfolder/  tmpfs  rw,nosuid,nodev,size=3D200G   0  0
>
> You might want to try rx_samples_to_file with the --multi_streamer option=
.
> I expect you will get better performance.  Also, you can take your RAM FS
> size higher from 8G to probably 60G if you want to try bigger recording
> depths.
> Rob
>
> On Tue, Mar 12, 2024 at 5:13=E2=80=AFPM Marcus D. Leech <patchvonbraun@gm=
ail.com>
> wrote:
>
>> On 12/03/2024 16:11, zackkomo@utexas.edu wrote:
>>
>> Hey Rob and Marcus,
>>
>> Thanks for the responses! I have a basic understanding of linux, but am
>> not very experienced. I tried the following to create the RAM filesystem=
:
>>
>> sudo mount -t tmpfs -o size=3D8G tmpfs /mnt/tmpfs/
>>
>> sudo mount -t ramfs -o size=3D8G ramfs /mnt/ramfs/
>>
>>
>> And ran the rx_samples_to_file, once with --file /mnt/tmpfs/test.bin, an=
d
>> once with --file /mnt/ramfs/test.bin, both times still getting o=E2=80=
=99s for
>> overruns.
>>
>> By my calculations, at ~500 M complex samples per second, each complex
>> sample 4 bytes (defaulting to short for I and Q), that means just 1 seco=
nd
>> of capturing equates to 2 GB of data. My system has 64 GB of RAM. Am I
>> creating the RAM filesystem correctly? Am I using it correctly?
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>> Assuming that you did a "sudo mkdir of /mnt/ramfs" beforehand,  this
>> should work.
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--00000000000084a0c506137dc770
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I think I am mistaken. If you are only streaming a single =
channel, the --multi_streamer option will likely not change a thing. I was =
assuming you had multiple channels.=C2=A0<div>Rob</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 12, 2024=
 at 5:40=E2=80=AFPM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkos=
sler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div>Your mount command with tmpfs looks correc=
t. Here is what mine is in my /etc/fstab file (with 264GB avail RAM)</div><=
div>tmpfs =C2=A0/media/ramfolder/ =C2=A0tmpfs =C2=A0rw,nosuid,nodev,size=3D=
200G =C2=A0 0 =C2=A00<br></div><div><br></div><div>You might want to try rx=
_samples_to_file with the --multi_streamer option. I expect you will get be=
tter performance.=C2=A0 Also, you can take your RAM FS size higher from 8G =
to probably 60G if you want to try bigger recording depths.</div><div>Rob</=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Tue, Mar 12, 2024 at 5:13=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto=
:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 12/03/2024 16:11,
      <a href=3D"mailto:zackkomo@utexas.edu" target=3D"_blank">zackkomo@ute=
xas.edu</a> wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <p>Hey Rob and Marcus,</p>
      <p>Thanks for the responses! I have a basic understanding of
        linux, but am not very experienced. I tried the following to
        create the RAM filesystem:</p>
      <pre><code>sudo mount -t tmpfs -o size=3D8G tmpfs /mnt/tmpfs/</code><=
/pre>
      <pre><code>sudo mount -t ramfs -o size=3D8G ramfs /mnt/ramfs/

</code></pre>
      <p>And ran the rx_samples_to_file, once with --file
        /mnt/tmpfs/test.bin, and once with --file /mnt/ramfs/test.bin,
        both times still getting o=E2=80=99s for overruns.</p>
      <p>By my calculations, at ~500 M complex samples per second, each
        complex sample 4 bytes (defaulting to short for I and Q), that
        means just 1 second of capturing equates to 2 GB of data. My
        system has 64 GB of RAM. Am I creating the RAM filesystem
        correctly? Am I using it correctly?</p>
      <p><br>
      </p>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    Assuming that you did a &quot;sudo mkdir of /mnt/ramfs&quot; beforehand=
,=C2=A0 this
    should work.<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div>

--00000000000084a0c506137dc770--

--===============5454645379172948968==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5454645379172948968==--
