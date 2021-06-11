Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F043A4949
	for <lists+usrp-users@lfdr.de>; Fri, 11 Jun 2021 21:07:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CAF3B3849CF
	for <lists+usrp-users@lfdr.de>; Fri, 11 Jun 2021 15:07:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="IFHmMTmd";
	dkim-atps=neutral
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 85E9338436D
	for <usrp-users@lists.ettus.com>; Fri, 11 Jun 2021 15:07:08 -0400 (EDT)
Received: by mail-wm1-f49.google.com with SMTP id f17so8619137wmf.2
        for <usrp-users@lists.ettus.com>; Fri, 11 Jun 2021 12:07:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=jBBEvH5/HYDgXcxnvy03V5iR9Qz4AAi0H4tGS6QCsug=;
        b=IFHmMTmdGmV+nmjGrBp9M0MfPqFQ/ezUtAFNPwbe62NPtkmLZ+ZabgPgQ5mH8yu5yy
         JqmuoUWNvj3RkzRBYNNkHa9TaCf6szRB0NlJ4XMReJWgYwjqnFICg+5XAH4ysbsktbfH
         WCknAaRzPVI5sNXN5AjQSnyO5G6CgZ/dKlNtHePo1tnfyE3dCZVPtg1qYYeyg0/eTue2
         G79Q8vy5ZGMC5Mo8u2n7kVgD9KlEcarAO50J8JU/hJVp/Wf+3CDVAoIu4xLAu4OtmOD5
         QFakZAw7Iox9Cgyp3p73bs2E0gWVRj+zfWAtqXGE/21bxEvp5R1NRovFpS6qAfmdNpr7
         3kZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=jBBEvH5/HYDgXcxnvy03V5iR9Qz4AAi0H4tGS6QCsug=;
        b=Ic/5kH50K4e/aw6tgQObeOKYwWD6ERAVvApA/pXSP+sdB+IOZ6eicVhk5yHVVKAWoc
         E9nrGUun4PDJKIjXAbQ/kVIfMJgRJSji3xEmO5nIeqbi1MC9eiAW99oWE/F4sNhBvU5P
         99CNhC4HYN0X0X0sBNWCcypGcK1OkSX+fZ50l2G1svkmcc1sAKr0VkwnjBX2bcpdQpgq
         FSmeP4OzCH1XLbb4EoqaKrUIRvHunYyG1IHXSC1lA+sHS5livUjOuEdG0EgywqeaHVgy
         lB25keLNrS8w+/iBTBEzX+BYSFT4lRJHLng31/0PxMh0lulDmvblzLMnc1sgw0WCAuuz
         d41g==
X-Gm-Message-State: AOAM531RSyhluoguecv4990FqTTEBdRiHPQ2iNLY7TtmoBSAHwhpb8k0
	BOk+ZDr1/DW039LVVA1vlUC/k7MOtpQZZNcG
X-Google-Smtp-Source: ABdhPJzoA1w9a6rusHkjCnuYSy52Gz9Py2teDrLcxSfiYpIVOxOgxROyfcPmIj54i8gXeqFgzTHvTg==
X-Received: by 2002:a7b:cc8f:: with SMTP id p15mr21874262wma.111.1623438427183;
        Fri, 11 Jun 2021 12:07:07 -0700 (PDT)
Received: from [192.168.128.8] (HSI-KBW-46-223-162-195.hsi.kabel-badenwuerttemberg.de. [46.223.162.195])
        by smtp.gmail.com with ESMTPSA id k12sm13408592wmr.2.2021.06.11.12.07.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jun 2021 12:07:06 -0700 (PDT)
To: "Marcus D. Leech" <patchvonbraun@gmail.com>,
 Jim Palladino <jim@gardettoengineering.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <MN2PR12MB3312739D7A0996F851BC7093B8349@MN2PR12MB3312.namprd12.prod.outlook.com>
 <18dc6abe-6785-2c0c-221a-03c48028b718@ettus.com> <60C3679C.8070900@gmail.com>
 <MN2PR12MB331229296F2D645E866AD0C4B8349@MN2PR12MB3312.namprd12.prod.outlook.com>
 <60C36C0F.7040209@gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Message-ID: <8c624ce3-ab9e-477a-1b37-d2a9289e6f7d@ettus.com>
Date: Fri, 11 Jun 2021 21:07:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <60C36C0F.7040209@gmail.com>
Content-Language: en-US
Message-ID-Hash: VQWVF2L4IDFMEXCHK5CYLUM6DJNQP2I3
X-Message-ID-Hash: VQWVF2L4IDFMEXCHK5CYLUM6DJNQP2I3
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 1PPS input voltage
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VQWVF2L4IDFMEXCHK5CYLUM6DJNQP2I3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Jim,

The congregation of Marcuses checked with R&D, and we figured out that in f=
act, the
NC7SV157 in U24 was replaced by a SN74LVC2G34, which is OK up to 6.5 V inpu=
t, in Hardware
revisions starting with Rev C.

So, if (and only if) you have a N320 in a revision that's C or greater, you=
're safe.
Otherwise, please don't connect a 5V source to the PPS input for now.

Best regards,

Marcus


On 11.06.21 15:58, Marcus D. Leech wrote:
> On 06/11/2021 09:45 AM, Jim Palladino wrote:
>> Hi Marcus,
>>
>> Right -- the output of the Octoclock is 5V. I'm not seeing how the N320 =
can accept that
>> as an input. The knowledge base article says the N320 expects 5Vpp at th=
e 1pps input.
>> But the schematics/parts data sheet for the input buffer don't seem to s=
upport that . .
>> . unless I'm missing something.
>>
>> Thanks,
>> Jim
> It certainly looks like a potential problem, but I haven't heard of anyon=
e having 1PPS
> failure issues on the N320 when used with
> =A0 Octoclock--pretty sure it was tested with Octoclock prior to release.=
=A0 But I'll check
> with R&D.
>
>
>>
>> ------------------------------------------------------------------------=
------------------
>> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
>> *Sent:* Friday, June 11, 2021 9:39 AM
>> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>> *Subject:* [USRP-users] Re: N320 1PPS input voltage
>> =A0
>> On 06/11/2021 09:11 AM, Marcus M=FCller wrote:
>> > Hello Jim,
>> >
>> >
>> > hm, that knowledge base article must be wrong: The octoclock internall=
y only has a 3.3V
>> > supply. But before I say something wrong here, let me check back.
>> >
>> >
>> > Best regards,
>> >
>> > Marcus
>> The 1PPS outputs on the Octoclock are bufered by 7404 inverters, which
>> appear to have a 5V Vcc.
>>
>> >
>> >
>> > On 11.06.21 14:17, Jim Palladino wrote:
>> >
>> >> Hello,
>> >>
>> >> We are planning on using an octoclock with several devices, including=
 an N320. The
>> >> octoclock outputs a 5V 1pps signal, but I'm confused about the N320 1=
pps input.
>> >>
>> >> According to
>> (https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__kb.ettus.com_N32=
0_N321-29-3A&d=3DDwIF-g&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=
=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=3D-9vS_HYCWF4BKKIX7QR3SO2L=
J3yD1MyEElYsX5a8WMs&s=3DTdFHQJNItGehIsL1D4yXezIfq_vO05AvF1_lMSyNpHs&e=3D
>> >> "PPS - Pulse Per Second Using a PPS signal for timestamp synchronizat=
ion requires a
>> >> square wave signal with the following a 5Vpp amplitude."
>> >>
>> >> If I look at the schematics for the N320, on page 15,
>> >>
>> (https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__kb.ettus.com_ima=
ges_f_f4_USRP-5FN3XX-5FMB-5FSchematic.pdf&d=3DDwIF-g&c=3DeuGZstcaTDllvimEN8=
b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=
=3D-9vS_HYCWF4BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&s=3D6JTHdP9IoYFRQhn24LgJjEof=
kuFwgAsHTs9iHhgMuBg&e=3D
>> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__kb.ettus.com_ima=
ges_f_f4_USRP-5FN3XX-5FMB-5FSchematic.pdf&d=3DDwIF-g&c=3DeuGZstcaTDllvimEN8=
b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=
=3D-9vS_HYCWF4BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&s=3D6JTHdP9IoYFRQhn24LgJjEof=
kuFwgAsHTs9iHhgMuBg&e=3D>)
>> they show that the input
>> >> 1pps signal goes through an NC7SV157. Vcc for that is 3.3V in the sch=
ematics.
>> >>
>> >> According to the datasheet, the absolute maximum rating on the input =
is 4.3V.
>> >>
>> "https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__www.onsemi.com_p=
df_datasheet_nc7sv157-2Dd.pdf&d=3DDwIF-g&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5=
A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=3D-9vS_HYCW=
F4BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&s=3DXPmiCDRDfM2wVtI1g4KChC9dkOJhMyrqBTMv=
_Rx01Xg&e=3D
>> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__www.onsemi.com_p=
df_datasheet_nc7sv157-2Dd.pdf&d=3DDwIF-g&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5=
A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=3D-9vS_HYCW=
F4BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&s=3DXPmiCDRDfM2wVtI1g4KChC9dkOJhMyrqBTMv=
_Rx01Xg&e=3D>"
>> >>
>> >> So, I'm not sure how the N320 can safely accept a 5V input (from the =
octoclock or other
>> >> device).
>> >>
>> >> Thanks,
>> >> Jim
>> >>
>> >>
>> >> _______________________________________________
>> >> USRP-users mailing list -- usrp-users@lists.ettus.com
>> >> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>> > _______________________________________________
>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
