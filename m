Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB12776304
	for <lists+usrp-users@lfdr.de>; Wed,  9 Aug 2023 16:51:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7A467384A9C
	for <lists+usrp-users@lfdr.de>; Wed,  9 Aug 2023 10:51:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691592707; bh=iIA0eJ8ezARw4Hzr5vWhJzpU7nmir5hjSmjovcWC2yA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=tg/AUn/a0cSaYeeJ5Ct82FbOnnSdYoTqD7Da/y4t/kwuF7+7IJg3tVBbbidwPmk+B
	 MQzkB/+vK4JgRaWqUyRX9AfBVALl/UH06ksHdJjikMC1NQZTQ4X/Ei2LO+riazqbXH
	 EC3WyQ3NldBLvGif0LlZ6tNNMXg8soygp1N8AXtvdKCkJ4LebGamaSzwH4VWAiyJW+
	 7vJM0VjljCNrXo3oCBrGeMmEAG7VyqqC4gnx+i/9NzunpMLkXjhXVbnSS+BNmA8f+k
	 mQiI7epgqG7f479J3m7SW8LpISfVTKrT8bvxi9kmzoqCP/rYVlD7UP81zU5bVTA9Eb
	 L0K4+S65IyQWA==
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 539EA384877
	for <usrp-users@lists.ettus.com>; Wed,  9 Aug 2023 10:51:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="FNQUfLEU";
	dkim-atps=neutral
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-4fe1c285690so10784503e87.3
        for <usrp-users@lists.ettus.com>; Wed, 09 Aug 2023 07:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1691592674; x=1692197474;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=29Vzd09vAjSC1JOEiiRsS0knC0/MAFIgKjCcW0JqACk=;
        b=FNQUfLEURt0eIQAFUgTAoxXgK8OqIBy+eZeGxpeUCbtCffNNgiudajWtG2/q2jTPVM
         hrhhiNTvtBW1IeZ6MckGy55+UHg7k6hO315sGdakGx0JCr3jrlUU97++bZa6YkzB98bJ
         GGJ8DzeHW0bsFvAObS4A6FaRy2cuCqp8b7wmGNuG3MIXzzdpjN5MkQDpLRUJ+Ghx6s04
         JzONVja75/w4aT7q7Ymy9rCWPCiTDacJQzp0FfXuLKPOVRtMhzpQX24r1WviAyyShi9A
         UcbOG7T3HWdLk04RiP9C39+XH8AuM67hvFmx7FKyy/Fv/udCKhzM3AeRperhdkzP0hT8
         RDwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691592674; x=1692197474;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=29Vzd09vAjSC1JOEiiRsS0knC0/MAFIgKjCcW0JqACk=;
        b=LCyWxYH2jV/u4BCgmW/8pStgW/uU2RjkMMFd42Uqk6A7BH5BupPwg4CJL08zTJsVa9
         1VqfOv5kl7GdzFH5a/VGb49J0pHU6Q0nlf3I9jsLhRpDGBH9oMH/t5HUZOEE7/myAsnc
         0IWeERMSFYbnZGB9SSg4lAcTFYUPmLp6Uq/h02Hw+38+hdHMksRLKMGNvZl+ZVdvREAH
         5ztPLzDBSse0d8fgS22bFB4TRv7t31dEfRRiiHaf4Yyk2njGEDPFkdVG5rbNot8rMxmB
         9fy6sLFA01LptzBG3UfQqx9X9kVNRZ4liwBas7McVyxLUWgVmHwSC+HB1vwP/aUpzWPP
         6tGA==
X-Gm-Message-State: AOJu0YyauIa4HhSeYqTMlqcBgAYA+ej60PkDcg9e0d/H1PC9KboKq7Po
	Gfi6+fS/ppMgypdVeQH3YFjVXxbLt8aS6IVtN8DBZeeD
X-Google-Smtp-Source: AGHT+IEYrRiIZQwopMe36R3kabN9nLRFApzUimgFOtA5xFP5rGQCLZ2vt0pkGEdRDj5VLEhQ3VIU5NGjhYeF6tWy7Lw=
X-Received: by 2002:ac2:4563:0:b0:4fb:8c52:611 with SMTP id
 k3-20020ac24563000000b004fb8c520611mr2074889lfm.38.1691592673741; Wed, 09 Aug
 2023 07:51:13 -0700 (PDT)
MIME-Version: 1.0
References: <fgdt0yZZ0s12IOXmLShFCNjHqQWREy9mP1TlsZcPno@lists.ettus.com>
 <e577b681-b065-f2ee-a2f0-f18f6f4a828b@gmail.com> <C97261E2-EE56-4818-AD1A-C516A94A8C31@yahoo.com>
 <00D240A2-D170-4CD1-98E3-867F79B09BCB@yahoo.com>
In-Reply-To: <00D240A2-D170-4CD1-98E3-867F79B09BCB@yahoo.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 9 Aug 2023 09:50:57 -0500
Message-ID: <CAFche=jvT=Ha=0wYQWwYUgd3zaBpbguQL8Suq1VR_xPxGUZR3w@mail.gmail.com>
To: Royce Connerley <royceconnerley@yahoo.com>
Message-ID-Hash: X5IJ5VDVPITQLCN7YUVWX3L73FCGGT5M
X-Message-ID-Hash: X5IJ5VDVPITQLCN7YUVWX3L73FCGGT5M
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: What is the power socket on an Octoclock CDA-2990?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X5IJ5VDVPITQLCN7YUVWX3L73FCGGT5M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2465622239839544570=="

--===============2465622239839544570==
Content-Type: multipart/alternative; boundary="0000000000006c785306027e9c67"

--0000000000006c785306027e9c67
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The connector on the Octoclock is a Switchcraft L722RA. I don't know the
part number for the mating connector, but you might be able to find a
compatible one using that as a reference.

Wade

On Wed, Aug 9, 2023 at 7:33=E2=80=AFAM Royce Connerley via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I retract my suggestion, now that I have seen the connector.
>
> > On Aug 8, 2023, at 2:29 PM, Royce Connerley via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> >
> > The E310 uses a bayonet style locking barrel connector.  I have used
> Kycon KLDX-PA-0202-A-LT on the E310.  DigiKey has them in stock.
> >
> >> On Aug 8, 2023, at 12:22 PM, Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
> >>
> >> On 08/08/2023 13:16, shapkiquarry@gmail.com wrote:
> >>>
> >>> Hello Marcus,
> >>>
> >>> Thank you for a response. But I have been hunting down a barrel
> connector for over a week. I have searched all of digikey, mouser, and
> amazon. I have already bought and received a barrel connector which I
> purchased from Ebay, and it was too wide for this socket. I am currently
> buying various connectors with =E2=80=9Clong barrel=E2=80=9D versus =E2=
=80=9Cshort barrel=E2=80=9D and
> simply shooting in the dark now.
> >>>
> >>> If anyone has any definitive datasheets on this with actual
> specifications, please let me know.
> >>>
> >>>
> >>> _______________________________________________
> >>> USRP-users mailing list -- usrp-users@lists.ettus.com
> >>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> >> I'm trying to get part numbers.   From my own experience, I think it's
> just basically a standard 5.5mm x 2.1mm barrel connector,
> >>  with the added frill of the threaded locking arrangement.
> >> _______________________________________________
> >> USRP-users mailing list -- usrp-users@lists.ettus.com
> >> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006c785306027e9c67
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The connector on the Octoclock is a Switchcraft	L722R=
A. I don&#39;t know the part number for the mating connector, but you might=
 be able to find a compatible one using that as a reference.<br></div><div>=
<br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Aug 9, 2023 at 7:33=E2=80=AFAM Royce =
Connerley via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">=
usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">I retract my suggestion, now that I have seen the=
 connector.<br>
<br>
&gt; On Aug 8, 2023, at 2:29 PM, Royce Connerley via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt; wrote:<br>
&gt; <br>
&gt; The E310 uses a bayonet style locking barrel connector.=C2=A0 I have u=
sed Kycon KLDX-PA-0202-A-LT on the E310.=C2=A0 DigiKey has them in stock.<b=
r>
&gt; <br>
&gt;&gt; On Aug 8, 2023, at 12:22 PM, Marcus D. Leech &lt;<a href=3D"mailto=
:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;=
 wrote:<br>
&gt;&gt; <br>
&gt;&gt; On 08/08/2023 13:16, <a href=3D"mailto:shapkiquarry@gmail.com" tar=
get=3D"_blank">shapkiquarry@gmail.com</a> wrote:<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; Hello Marcus,<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; Thank you for a response. But I have been hunting down a barre=
l connector for over a week. I have searched all of digikey, mouser, and am=
azon. I have already bought and received a barrel connector which I purchas=
ed from Ebay, and it was too wide for this socket. I am currently buying va=
rious connectors with =E2=80=9Clong barrel=E2=80=9D versus =E2=80=9Cshort b=
arrel=E2=80=9D and simply shooting in the dark now.<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; If anyone has any definitive datasheets on this with actual sp=
ecifications, please let me know.<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.=
ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;&gt;&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-l=
eave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a=
><br>
&gt;&gt; I&#39;m trying to get part numbers.=C2=A0 =C2=A0From my own experi=
ence, I think it&#39;s just basically a standard 5.5mm x 2.1mm barrel conne=
ctor,<br>
&gt;&gt;=C2=A0 with the added frill of the threaded locking arrangement.<br=
>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettu=
s.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave=
@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br=
>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006c785306027e9c67--

--===============2465622239839544570==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2465622239839544570==--
