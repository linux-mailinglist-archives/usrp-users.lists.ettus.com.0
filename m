Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B586907E37
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jun 2024 23:37:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B1E3C385524
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jun 2024 17:37:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718314629; bh=7+GcO6+zvZusdkUH56QLliFJy58ueCWE3D0Y82mwUY8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ctPX2Z9CQ2rrX1PZQ3VZYB2BH4IrdraBUkc7mse/uptibD5xPFizOiNWp6PIeGYli
	 3uCDqxVnDdaN/4mKiLjRVOAVRnmD1zMFU2dwozKRPmNuIP3GzszcnmTNR8rKEUtg56
	 2/TsPEy1ZJJ+6+Ue8ArLLocm63Vnk62CAexSuf2/OiJUFPNyy3svi+n3OZya145Au1
	 f4g/sc/UqGI07Iq1I1rwG/s7tO54SCwSyC/a6TqqmfRk0MiKeA3BU95XPqYGQ1LyBc
	 WYZBP14r8stX1Wb322Pip+Zs5zlNkGkaNGMJtdLrrZgjI4MItLAbGmlmcRIQJopRvR
	 gdmtiKgpt7q8g==
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	by mm2.emwd.com (Postfix) with ESMTPS id ED5DF385459
	for <usrp-users@lists.ettus.com>; Thu, 13 Jun 2024 17:36:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kt5nQksS";
	dkim-atps=neutral
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-6f8ec7e054dso1026405b3a.2
        for <usrp-users@lists.ettus.com>; Thu, 13 Jun 2024 14:36:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718314605; x=1718919405; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eXU6oA9oXFKi0QEooAVbX7Nhc6SgQBQ3Giza7l1rIj8=;
        b=kt5nQksSy1XtKNkLiN+W72ekmmyP+EwYFzr0BwQMN45zoW9DyWUMQ2/Hp+weUylaWu
         YRgk1kZ/6/KX1Kpnd0bH1uiimblN1THNTnxqnY3CiaPeSwn1gmzh3x+ePP/xnyvjib++
         iAcgYR3rITlZy4iszMk0Cn2v15izYRJEnwmCRm2b21sZKOFO1zKUQytSWF+9zq2gVLDW
         of6V0g7aNhRa+i15m9/857UO+PmqjfYTSYj9kPQgfFIqbWCO1ZziwNCmfj5OMRIs1bZ4
         cvlPobPcKjcVN3tHWm8YMXTzlVIxu4adUYJVzZiT0BtHjJ3n+fG0xdlHMzAd8adcEja0
         WDeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718314605; x=1718919405;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eXU6oA9oXFKi0QEooAVbX7Nhc6SgQBQ3Giza7l1rIj8=;
        b=N7MAzM/KAr783eDEgqoqVk6ghkJ7QwGLuzf9QrKJsOkYqngvkbN7ycWBD6CKmJbJhy
         Z14jOkQe5kLeIYjhGGh8RV42kIBtFmz3Z7/tOXsm/8iTi9CXpcG38MhBnZbyfUAJfTXq
         Z0NA7TVmmwF88e7iWmTayeCKLoESYob/fdppgMJY749bPB80I87iuJatcS9EPyY8MulZ
         F8qeOOhaDVBHfG+9tAcAuDz1TybOKUCIXALtoaTalAqIkHhOs9qz99g45V0HWraQHlca
         MlROyKOrPLsBYDaeYwmMyNnGx5lPFbqp7maspE08i/kVwVI6+NGzF5ttz737KmikDtZh
         6paw==
X-Gm-Message-State: AOJu0YzYsLosEW1rnc4eViopQIuaf1XMI4PB+ycnVDZF61TRdnBmkVIz
	XelP8OMOB03NTlx78JItnHACVUcsMdsJqVkCkEZ7WnF0xy7S14JfEj2dM96c7FdQ12uy0lO2ocQ
	OEt4IS7q7q1Ba0NqBhKtjYh1hzllogw==
X-Google-Smtp-Source: AGHT+IELi/CUnrFn+El48Rr29Ywv9idsMVirzVR6K17psjAvvzsJCOA8+d6DItI3TiGfBhZnpwoBfT7RrNnFFh91OLk=
X-Received: by 2002:a05:6a20:7349:b0:1b7:b178:d8d0 with SMTP id
 adf61e73a8af0-1bae82da35bmr1296171637.60.1718314605578; Thu, 13 Jun 2024
 14:36:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAFPzw1=hsoXJe7hH_0C5OweSZJGf-Ht3VZGuzqT_wqdh1cUVpg@mail.gmail.com>
 <4d6afc01-37e3-437c-895c-9b8e07010b20@gmail.com> <CAFPzw1=1ZBBRimj_UfM-HyFOXqMQJMmwaQQPHr0e9mBx21d57A@mail.gmail.com>
 <f464a082-d0cb-4bbd-8a8f-96a0b7fa837c@gmail.com>
In-Reply-To: <f464a082-d0cb-4bbd-8a8f-96a0b7fa837c@gmail.com>
From: Anabel Almodovar <anabel.almodovar@gmail.com>
Date: Thu, 13 Jun 2024 23:36:34 +0200
Message-ID: <CAFPzw1n+aq-VCvuTzVbQkaEKn-t9xFmM3=-hHTkL4u5Rx1RsKg@mail.gmail.com>
To: patchvonbraun@gmail.com
Message-ID-Hash: 6FGNYTSO6ZMTYUPZHU5VDE3KDXQYPLG4
X-Message-ID-Hash: 6FGNYTSO6ZMTYUPZHU5VDE3KDXQYPLG4
X-MailFrom: anabel.almodovar@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: IOError: x300 fw poke32 persist with large adquisition times
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6FGNYTSO6ZMTYUPZHU5VDE3KDXQYPLG4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8418234607868989121=="

--===============8418234607868989121==
Content-Type: multipart/alternative; boundary="000000000000ad901e061acc4ba0"

--000000000000ad901e061acc4ba0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, I set the ring buffer settings every time I switch on the PC.

El jue, 13 jun 2024, 23:29, Marcus D. Leech <patchvonbraun@gmail.com>
escribi=C3=B3:

> On 13/06/2024 17:16, Anabel Almodovar wrote:
>
> Dear Marcus,
>
>>
>> * Is this happening on BOTH USRPs?*
>>
>
>  Yes, it happens with both USRP randomly.
>
>>
>> * Have you followed this guide here for performance tuning?*
>>
>> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks
>>
>
> Yes, I have followed your advice. The only thing I haven't dared to touch
> is the grub.
>
>>
>>
>> * I have an X310 with two TwinRX, on Ubuntu 22.04, UHD 4.1, and I can
>> stream literally for *days* without any issue   at all.*
>>
>
> Well, That is my goal but I don=C2=B4t know how.
>
>>
>> * How are you connected to your X310s?   If you only run one at a time,
>> do you see this failure?*
>>
>> They are connected via dual 10GB ethernet ports and each port is
> connected to a different network card to ensure there are no limitations.=
 I
> get the same behavior with a single USRP.
>
> I have tried to apply the configuration indicated in this example:
>
>
> https://github.com/EttusResearch/refarch-multich/blob/dev/config/sysctrl_=
config.sh
>
> But the same thing keeps happening.
>
> Regards,
> Anabel
>
> What about the ring buffer settings?
>
> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks
>
> The ring buffer settings aren't persistent across a reboot, so you either
> need to have an "rc.local" file that sets them
>   or you need to do this manually every time you reboot the system.
>
>
> I admit that I'm only using a single 10GigE card for my application --
> streaming up to 4 channels at up to 25Msps
>   per channel.
>
> But I can literally just let it run for days at a time without issue on m=
y
> particular computer.
>
>
> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
>

--000000000000ad901e061acc4ba0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Yes, I set the ring buffer settings every time I switch on t=
he PC.</p>
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El jue=
, 13 jun 2024, 23:29, Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@g=
mail.com">patchvonbraun@gmail.com</a>&gt; escribi=C3=B3:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 13/06/2024 17:16, Anabel Almodovar
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div dir=3D"ltr">Dear Marcus,</div>
        <div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div><br>
              <blockquote type=3D"cite"> </blockquote>
              <i> Is this happening on BOTH USRPs?</i><br>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>=C2=A0Yes, it happens with both USRP randomly.</div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div> <br>
              <i> Have you followed this guide here for performance
                tuning?</i><br>
              <br>
              <a href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_=
Tips_and_Tricks" target=3D"_blank" rel=3D"noreferrer">https://kb.ettus.com/=
USRP_Host_Performance_Tuning_Tips_and_Tricks</a></div>
          </blockquote>
          <div><br>
          </div>
          <div>Yes, I have followed your advice. The only thing I
            haven&#39;t dared to touch is the grub. =C2=A0</div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div><br>
              <i> I have an X310 with two TwinRX, on Ubuntu 22.04, UHD
                4.1, and I can stream literally for *days* without any
                issue<br>
                =C2=A0 at all.</i><br>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>Well, That is my goal but I don=C2=B4t know how.=C2=A0</div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div> <br>
              <i> How are you connected to your X310s?=C2=A0=C2=A0 If you o=
nly run
                one at a time, do you see this failure?</i><br>
              <br>
            </div>
          </blockquote>
          <div>They are connected via dual 10GB ethernet ports and each
            port is connected to a different network card to ensure
            there are no limitations.=C2=A0I get the same behavior with a
            single USRP.=C2=A0</div>
          <div><br>
          </div>
          <div>I have tried to apply the configuration indicated in this
            example: <br>
            <br>
            <a href=3D"https://github.com/EttusResearch/refarch-multich/blo=
b/dev/config/sysctrl_config.sh" target=3D"_blank" rel=3D"noreferrer">https:=
//github.com/EttusResearch/refarch-multich/blob/dev/config/sysctrl_config.s=
h</a><br>
            <br>
            But the same thing keeps happening.<br>
          </div>
          <div><br>
          </div>
          <div>Regards,</div>
          <div>Anabel</div>
        </div>
      </div>
    </blockquote>
    What about the ring buffer settings?<br>
    <br>
    <a href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_T=
ricks" target=3D"_blank" rel=3D"noreferrer">https://kb.ettus.com/USRP_Host_=
Performance_Tuning_Tips_and_Tricks</a><br>
    <br>
    The ring buffer settings aren&#39;t persistent across a reboot, so you
    either need to have an &quot;rc.local&quot; file that sets them<br>
    =C2=A0 or you need to do this manually every time you reboot the system=
.<br>
    <br>
    <br>
    I admit that I&#39;m only using a single 10GigE card for my application
    -- streaming up to 4 channels at up to 25Msps<br>
    =C2=A0 per channel.<br>
    <br>
    But I can literally just let it run for days at a time without issue
    on my particular computer.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div> </div>
            _______________________________________________<br>
            USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.e=
ttus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</=
a><br>
            To unsubscribe send an email to <a href=3D"mailto:usrp-users-le=
ave@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@=
lists.ettus.com</a><br>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--000000000000ad901e061acc4ba0--

--===============8418234607868989121==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8418234607868989121==--
