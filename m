Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FFB3382EDE
	for <lists+usrp-users@lfdr.de>; Mon, 17 May 2021 16:10:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1AF0538414D
	for <lists+usrp-users@lfdr.de>; Mon, 17 May 2021 10:10:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HvaDE1BW";
	dkim-atps=neutral
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 272AF383B67
	for <usrp-users@lists.ettus.com>; Mon, 17 May 2021 10:09:46 -0400 (EDT)
Received: by mail-oi1-f175.google.com with SMTP id j75so6567029oih.10
        for <usrp-users@lists.ettus.com>; Mon, 17 May 2021 07:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=E/dLnkU134n8mrAoxU4vS0ncEUIta3uIhbTvqrf344g=;
        b=HvaDE1BWM/SXuYd5cp9UkHWjFiXBosbGySDWtJOLmqMa/71hLOcmtkNsm6JG/xOwA7
         5V1bND9FEQqPIQpPi1n+iVrif6NrYCY7kCioyJxKoL2blWmXv1GB6zFxmHnHiPIh70Fz
         MmY1E5IFrXytryS9JndLQjL9g2Jodlzey9cdYSTuWpH2lLWyY6YNkLbdN8jqn91NDBRA
         IA1Fs79udHjATCTkgxxvkwGnPE7OI2d6x6bbEFOaayMl0K9IOE7324Y/1XmDGE+eLYTB
         7P3Ebq6Qv3AeYQXcz4DxNRb4lP6T1edyfJUcMe3e8pvxXjH2zwZVuCHuuGB3j9YcoS3A
         A68Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=E/dLnkU134n8mrAoxU4vS0ncEUIta3uIhbTvqrf344g=;
        b=DbaYUwoNp6BDXq6cOodga8sHMnABDNfI15hMAhAIM+dVbONQgw8u/HA3gidvTKrEpR
         bN2SHsGLik8zWQODHoMY+EZ1u+DZD6ItWdBFMR5/BfERL57gRHCHjMGe79abHB/dLkFt
         4EeqkgFG52WKmky6iKnz35LXFwIOU/WoLpBgJoxGZOt8qrZ1pum3Lwvfq9m5uOufywEK
         A9cnArKhCMxSfNd+rCJfH37xlF5suiEFyX3MK1ii6e3B9WD5lU48jOYtDbLC31waaN2W
         BlaCJmNzJcxx08OLoX7uZy3L8OnBCQM8JW1+wisEasIzoO6XT88cQAZEH3yi4d/RLLRR
         qHXw==
X-Gm-Message-State: AOAM5338NTaUB5YR+lp5LZJtODI8y4ou2O4KrpduLmGjf+dR0BYJK2nD
	3x/yVVn4qAseEIug2715TPCAENeP+isNFMXMGlQ=
X-Google-Smtp-Source: ABdhPJzKnK91dNDFUCW7DePV/c8WykQ8z+VBZJ3vySKb5kvzcdESo/V6pss5bNhyUtJLf/2XwYBTRy9zh3bk2UMM/xs=
X-Received: by 2002:a05:6808:484:: with SMTP id z4mr25989oid.64.1621260586311;
 Mon, 17 May 2021 07:09:46 -0700 (PDT)
MIME-Version: 1.0
References: <BLAPR09MB6612AA4E4BEC9AB9EC4D73C8D9509@BLAPR09MB6612.namprd09.prod.outlook.com>
 <12712_1621024152_609EDD98_12712_124_1_CAEXYVK4M7VXi8vAaXpneJ_hVvwbaLPQD+Q9vLO7XJvjbifSDvw@mail.gmail.com>
 <BLAPR09MB6612480376497870AC78363FD9509@BLAPR09MB6612.namprd09.prod.outlook.com>
 <CAEXYVK521Vi5zDzxbkCLdMAVdgBcEoXM1yBXy7seMW=XcPtzbw@mail.gmail.com>
 <BLAPR09MB6612A8E6DC947A10BE0A2093D92F9@BLAPR09MB6612.namprd09.prod.outlook.com>
 <BLAPR09MB6612D72CDEB494129FE5AAD3D92F9@BLAPR09MB6612.namprd09.prod.outlook.com>
In-Reply-To: <BLAPR09MB6612D72CDEB494129FE5AAD3D92F9@BLAPR09MB6612.namprd09.prod.outlook.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Mon, 17 May 2021 10:09:35 -0400
Message-ID: <CAEXYVK6cSejKZkr40v6BUeta1mPfGyfOtwE8-62p_PCTdSqxhw@mail.gmail.com>
To: Jeffrey P Long <jplong@mitre.org>
Message-ID-Hash: SEWC4EW3HX6HJMKQ5V4K6IKKH7MZ5RHY
X-Message-ID-Hash: SEWC4EW3HX6HJMKQ5V4K6IKKH7MZ5RHY
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXT] Re: RFNOC block name?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SEWC4EW3HX6HJMKQ5V4K6IKKH7MZ5RHY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2134269640768375622=="

--===============2134269640768375622==
Content-Type: multipart/alternative; boundary="00000000000055e66505c28725d8"

--00000000000055e66505c28725d8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, May 15, 2021 at 7:17 PM Jeffrey P Long <jplong@mitre.org> wrote:

> Brian-
>
>
>
> As a further test I moved the whole OOT module directory over to the
> device and cmake/make/install right on the device to see if it had some
> special sauce but no luck.
>
>
>
> OK maybe this is a real problem that Ettus is not going to resolve for
> custom C++ work?
>
>
>
> OOT RFNoC Block not propagating action in UHD4 =C2=B7 Issue #406 =C2=B7
> EttusResearch/uhd =C2=B7 GitHub
> <https://github.com/EttusResearch/uhd/issues/406>
>
>
>
> The solution according to this issue is to use gr-ettus etc.
>
>
>
> I don=E2=80=99t use GNU radio and hoped to finally try RFNOC for real but=
 it seems
> to still not be fully functional.
>
> I am guessing that since my controller is looking for the real name or
> something its getting confused?
>
>
>
> I have seen work arounds posted related to naming your OOT module =E2=80=
=9Cblock=E2=80=9D
> instead of something custom which seems limited. Also something about
> building the block controller in-tree. I suppose I could do that but I
> guess I would have to rebuild UHD and move it over.
>

These are all possibilities, but I am not a huge fan of them.  I have been
successful using the UHD_MODULE_PATH way with my block controller defined
in the library.


>
>
> What=E2=80=99s funny is that even in their OOT example on getting started=
 with UHD
> 4.0 their gain block shows up generically as =E2=80=9Cblock=E2=80=9D. Som=
ehow they did not
> notice that?
>

The reason is because the C++ block really defines the block name, and the
YAML is not scanned during every load of UHD unlike the old RFNoC way where
the XML files were scanned every time UHD was loaded to build the registry
of blocks and names.  It was a known design choice from what I understand.

Not sure why you can't get it to show up when the library is appropriately
defined and UHD_MODULE_PATH is also appropriately defined.  What does your
txcore_block.cpp look like?

Brian

>

--00000000000055e66505c28725d8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Sat, May 15, 2021 at 7:17 PM Jeffrey P=
 Long &lt;<a href=3D"mailto:jplong@mitre.org">jplong@mitre.org</a>&gt; wrot=
e:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"gmail-m_-541026941370104075WordSection1">
<p class=3D"MsoNormal">Brian-<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">As a further test I moved the whole OOT module direc=
tory over to the device and cmake/make/install right on the device to see i=
f it had some special sauce but no luck.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">OK maybe this is a real problem that Ettus is not go=
ing to resolve for custom C++ work?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><a href=3D"https://github.com/EttusResearch/uhd/issu=
es/406" target=3D"_blank">OOT RFNoC Block not propagating action in UHD4 =
=C2=B7 Issue #406 =C2=B7 EttusResearch/uhd =C2=B7 GitHub</a><u></u><u></u><=
/p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">The solution according to this issue is to use gr-et=
tus etc.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I don=E2=80=99t use GNU radio and hoped to finally t=
ry RFNOC for real but it seems to still not be fully functional.<u></u><u><=
/u></p>
<p class=3D"MsoNormal">I am guessing that since my controller is looking fo=
r the real name or something its getting confused?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I have seen work arounds posted related to naming yo=
ur OOT module =E2=80=9Cblock=E2=80=9D instead of something custom which see=
ms limited. Also something about building the block controller in-tree. I s=
uppose I could do that but I guess I would have to
 rebuild UHD and move it over.</p></div></div></blockquote><div><br></div><=
div>These are all possibilities,=C2=A0but I am not a huge fan of them.=C2=
=A0 I have been successful using the UHD_MODULE_PATH way with my block cont=
roller defined in the library.</div><div>=C2=A0</div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div lang=3D"EN-US" style=3D"overflow-wrap: bre=
ak-word;"><div class=3D"gmail-m_-541026941370104075WordSection1"><p class=
=3D"MsoNormal"><u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">What=E2=80=99s funny is that even in their OOT examp=
le on getting started with UHD 4.0 their gain block shows up generically as=
 =E2=80=9Cblock=E2=80=9D. Somehow they did not notice that?</p></div></div>=
</blockquote><div><br></div><div>The reason is because the C++ block really=
 defines the block name, and the YAML is not scanned during every load of U=
HD unlike the old RFNoC way where the XML files were scanned every time UHD=
 was loaded to build the registry of blocks and names.=C2=A0 It was a known=
 design choice from what I understand.</div><div><br></div><div>Not sure wh=
y you can&#39;t get it to show up when the library is appropriately defined=
 and UHD_MODULE_PATH is also appropriately defined.=C2=A0 What does your tx=
core_block.cpp look like?</div><div><br></div><div>Brian</div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div lang=3D"EN-US" style=3D"overflow-=
wrap: break-word;"><div class=3D"gmail-m_-541026941370104075WordSection1"><=
div><div><div>
</div>
</div>
</div>
</div>
</div>

</blockquote></div></div>

--00000000000055e66505c28725d8--

--===============2134269640768375622==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2134269640768375622==--
