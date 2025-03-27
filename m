Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9AEA73EE5
	for <lists+usrp-users@lfdr.de>; Thu, 27 Mar 2025 20:44:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 236DF385817
	for <lists+usrp-users@lfdr.de>; Thu, 27 Mar 2025 15:44:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743104657; bh=SqQv2FThJIiDk1jCcjTcPIvUlrpgVsOq+N0d86eLB0A=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Pj9PNXhSOgn9PdOT7h8l5gTylSPZSLqZDYnD5K0Z/YIojduBu0WGg1JAMtoehP4Dv
	 1Os804HcvG0dsA1t71B5KCwnFWAAkbvVWkhARw1cmdTykNuNYiGt9AK26SzQBZbGhY
	 ncAA8TvHjnfeaYY7+RJRgj1/yC4b9IO4agjDNAfQUS2cmICEDM8pcnjUjQz+xHoC+W
	 18l4ghxVjXXLkzipUCJCCeAo09wEWBLQIuWXR1m6vO1JgVxcr1PVABV2RTKqlLAFgC
	 io06JPdP2zW1F2YrwwjKiQpoxmAEP7veGj90AC7yQbwO92tyi/3kK2dVK/KiIB18X5
	 /Z0o00g9ruTjA==
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 96AAD385444
	for <usrp-users@lists.ettus.com>; Thu, 27 Mar 2025 15:43:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Olm+cjFD";
	dkim-atps=neutral
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-72c1419f73eso1309932a34.1
        for <usrp-users@lists.ettus.com>; Thu, 27 Mar 2025 12:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743104615; x=1743709415; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ff8sPFCXwt0O4WlQgBwr7YX7VteOarb4qgM0juuloLA=;
        b=Olm+cjFDHyKqAua74r/HnNGvvLmdfDpwnemY2jS4OrvqI5kzj3v/4V9W5rqEJmQT9p
         Ne5nBQKnWNaD1c7nSgTVxNngLLSSFqcJxrq2jIuF5PZIcCM7UP/Gqw0R4CmYvbdv+GBL
         sy0MhNBBxvQukC9jQ3aV8KGCGfOlG934iwiBaR6KtjjzY5O5aBZdeTk3jREcSfk5cYv8
         fRI9PDEZbunashqOU0VHjpL46/tjGuMqajdHhvrJQR5baBZuCMykcqqsH8hfrZASeyT7
         u7huaWMputUNZtwgZarwvK0YXzNTnSaTYjXGHypejRwZlnGXk12bKyFA5azAhJh289rC
         vARw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743104615; x=1743709415;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ff8sPFCXwt0O4WlQgBwr7YX7VteOarb4qgM0juuloLA=;
        b=etghktN077Mgg3imOaM4eY39NPNxElL6nB++aL1w9LBFD34AbHCIVHOn03vXEgSQal
         yc/aTdkj02rAhZMkvkEHmMkL2nnit7CvC1bVyF8IYTc2w31g9vS4H3+90uYjiMDqGulC
         m1FLm9Q51LJjfpB6DDLF/ALOtf/lkP1L1Nn0aCBvqYTYQ0rLJ+vgg4ufg6VtqJPMlt0a
         Yd1d4cKZy0IHxtJLiLuEXSEfm8OvV14AdVpC7fHtD33mfdcmxnVhRaEQV8JYvOMD/jH/
         iDYzpv0nNlYlGxyTpQHFOFU303wIqf2Ry67z/kRIzOwQKnU48uQjllFmKFMKhbNXEiK5
         2lzw==
X-Gm-Message-State: AOJu0YwLqmuHDbhLIE7/t0dfPpBGYQwFh2UU35bI8k+7YmJpv6JaFhRM
	Trq/6obixMAyLFeW6JAdmWz5sijkiv8asMJBWUCrZA39a0GVmbAnh7pIJZ2RUYWwOB2VqFR8MCa
	hO0brY29IM4jIvZgZzoFoV08Quj0=
X-Gm-Gg: ASbGncvK9KA+Yl89k6XFPAlfxDfY0PZwc2SMH80gqUvu58RgdAaVloSg0dl74Ijd5Z4
	WBTPhVbW7M5Dyp+t0vR8t0VNF8pAFZxn7CFP8QT0nq+Dugh3EUi58U/J/zQA1uMIJMNYqg6XfIR
	cv+g8Md1npJvFPcLT723mXikU3
X-Google-Smtp-Source: AGHT+IE58UwPDKNMWbkzlkde6hZNdYj57rGwARKfLhZqKE6dUbd4iJtctXhE9i6sLCA/9dkjXf9UBiv7pSsUduBbBvk=
X-Received: by 2002:a05:6870:1d0c:b0:2c1:539a:6071 with SMTP id
 586e51a60fabf-2c8714791a2mr19990fac.10.1743104614480; Thu, 27 Mar 2025
 12:43:34 -0700 (PDT)
MIME-Version: 1.0
References: <CALM_BfYZML=gn1qcQEDVCc5W+DdeojAVxiFmKdmDESFuA1Ep6Q@mail.gmail.com>
 <b577024e-902c-4eed-8a32-409d7ba8335a@gmail.com> <CAOEzSFTb_RoOYxYuDzR4HHYQjL_rZz2oXKB9F3qHQ9op3xis+g@mail.gmail.com>
 <PH1P110MB1284346766755262C416A81D98A1A@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <PH1P110MB1284346766755262C416A81D98A1A@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
From: Chris Rogers <c1337rogers@gmail.com>
Date: Thu, 27 Mar 2025 15:43:21 -0400
X-Gm-Features: AQ5f1JqpFctIk8rFvs2HlB3jh3_J7TfOgIjqts4Z3FS5j93D0YfB0rHczIccUgU
Message-ID: <CAOEzSFRXj0p9bm4OLh5mO4CFgqevMDtahLeO=tg77N+p-wfPUA@mail.gmail.com>
To: "Mann, John - 0662 - MITLL" <mannj@ll.mit.edu>
Message-ID-Hash: F5STWCRJQVK2DLORZR7PQIK57PGN56FD
X-Message-ID-Hash: F5STWCRJQVK2DLORZR7PQIK57PGN56FD
X-MailFrom: c1337rogers@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXT] Re: X440 Phase Coherent but not Phase Aligned
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F5STWCRJQVK2DLORZR7PQIK57PGN56FD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5966614721193207416=="

--===============5966614721193207416==
Content-Type: multipart/alternative; boundary="0000000000005a4b410631582ba2"

--0000000000005a4b410631582ba2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm not the expert here but from everything I know about this issue, I
don't think it's possible just because the X410 apparently does not support
timed tuning... Here's the code excerpt from a commit where tx_waveforms
was specifically modified to exclude the X410 from timed tuning
(
https://github.com/EttusResearch/uhd/commit/4289cc1eefaaee7a90ccd7e04ee88ab=
275c72217
)

// use timed tuning for more that one channel on all devices except X410
    // X410 does not yet support timed tuning
    const bool timed_tuning =3D usrp->get_mboard_name() !=3D "x410"
                              and channel_nums.size() > 1;
    const float cmd_time_offset =3D 0.1;

    if (timed_tuning) {
        const uhd::time_spec_t now      =3D usrp->get_time_now();
        const uhd::time_spec_t cmd_time =3D now +
uhd::time_spec_t(cmd_time_offset);
        usrp->set_command_time(cmd_time);
    }

    for (std::size_t channel : channel_nums) {
        uhd::tune_request_t tune_request(freq, lo_offset);
        if (vm.count("int-n"))
            tune_request.args =3D uhd::device_addr_t("mode_n=3Dinteger");
        usrp->set_tx_freq(tune_request, channel);
    }

It looks like the X410 will iteratively tune each channel, which is why
you're getting random phases run to run.

On Thu, Mar 27, 2025 at 3:33=E2=80=AFPM Mann, John - 0662 - MITLL <mannj@ll=
.mit.edu>
wrote:

> Does anyone know if there is a way to get predictable phase offsets from
> an X410?  I am finding that from run-to-run, the 4 channels in an X410 ha=
ve
> completely random phase offsets from each other.  I didn=E2=80=99t necess=
arily
> expect the phase offsets to be zero, but was hoping they would at least b=
e
> consistent.
>
>
>
> John
>
>
>
> *From:* Chris Rogers <c1337rogers@gmail.com>
> *Sent:* Thursday, March 27, 2025 1:51 PM
> *To:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* [EXT] [USRP-users] Re: X440 Phase Coherent but not Phase
> Aligned
>
>
>
> Hi Heath and Marcus, I was actually "R&D's plate" for this one. We worked
> through it and found the issue. The root cause is the startup sequence in
> almost every example UHD script is a bit out of order and had to be
> reorganized
>
> ZjQcmQRYFpfptBannerStart
>
> *This Message Is From an External Sender *
>
> This message came from outside the Laboratory.
>
> ZjQcmQRYFpfptBannerEnd
>
> Hi Heath and Marcus,
>
>
>
> I was actually "R&D's plate" for this one. We worked through it and found
> the issue. The root cause is the startup sequence in almost every example
> UHD script is a bit out of order and had to be reorganized in terms of
> clock setup and synchronized channel tuning. This problem is fixed in UHD
> 4.7+ if you look at the "tx_waveforms.cpp" example code... For your
> application, just make sure to follow the same startup sequence.
>
>
>
> Hope this helps,
>
> Chris
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005a4b410631582ba2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m not the expert here but from everything I know abo=
ut this issue, I don&#39;t think it&#39;s possible just because the X410 ap=
parently does not support timed tuning... Here&#39;s the code excerpt from =
a commit where tx_waveforms was specifically modified to exclude the X410 f=
rom timed tuning <br>(=C2=A0<a href=3D"https://github.com/EttusResearch/uhd=
/commit/4289cc1eefaaee7a90ccd7e04ee88ab275c72217">https://github.com/EttusR=
esearch/uhd/commit/4289cc1eefaaee7a90ccd7e04ee88ab275c72217</a> )<br><br>//=
 use timed tuning for more that one channel on all devices except X410<br>=
=C2=A0 =C2=A0 // X410 does not yet support timed tuning<br>=C2=A0 =C2=A0 co=
nst bool timed_tuning =3D usrp-&gt;get_mboard_name() !=3D &quot;x410&quot;<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 and channel_nums.size() &gt; 1;<br>=C2=
=A0 =C2=A0 const float cmd_time_offset =3D 0.1;<br><br>=C2=A0 =C2=A0 if (ti=
med_tuning) {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 const uhd::time_spec_t now =C2=
=A0 =C2=A0 =C2=A0=3D usrp-&gt;get_time_now();<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 const uhd::time_spec_t cmd_time =3D now + uhd::time_spec_t(cmd_time_off=
set);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp-&gt;set_command_time(cmd_time);<b=
r>=C2=A0 =C2=A0 }<br><br>=C2=A0 =C2=A0 for (std::size_t channel : channel_n=
ums) {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 uhd::tune_request_t tune_request(freq=
, lo_offset);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (vm.count(&quot;int-n&quot;=
))<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 tune_request.args =3D uhd::=
device_addr_t(&quot;mode_n=3Dinteger&quot;);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 usrp-&gt;set_tx_freq(tune_request, channel);<br><div>=C2=A0 =C2=A0 }</div>=
<div><br></div><div>It looks like the X410 will iteratively tune each chann=
el, which is why you&#39;re getting random phases run to run.</div></div><b=
r><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Mar 27, 2025 at 3:33=E2=80=AFPM Mann, John - 0662 -=
 MITLL &lt;<a href=3D"mailto:mannj@ll.mit.edu">mannj@ll.mit.edu</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=
=3D"msg4128297795346793940"><div lang=3D"EN-US" style=3D"overflow-wrap: bre=
ak-word;"><div class=3D"m_4128297795346793940WordSection1"><p class=3D"MsoN=
ormal">Does anyone know if there is a way to get predictable phase offsets =
from an X410?=C2=A0 I am finding that from run-to-run, the 4 channels in an=
 X410 have completely random phase offsets from each other.=C2=A0 I didn=E2=
=80=99t necessarily expect the phase offsets to be zero, but was hoping the=
y would at least be consistent.<u></u><u></u></p><p class=3D"MsoNormal"><u>=
</u>=C2=A0<u></u></p><p class=3D"MsoNormal">John<u></u><u></u></p><p class=
=3D"MsoNormal"><u></u>=C2=A0<u></u></p><div style=3D"border-width:1pt mediu=
m medium;border-style:solid none none;border-color:rgb(225,225,225) current=
color currentcolor;padding:3pt 0in 0in"><p class=3D"MsoNormal"><b>From:</b>=
 Chris Rogers &lt;<a href=3D"mailto:c1337rogers@gmail.com" target=3D"_blank=
">c1337rogers@gmail.com</a>&gt; <br><b>Sent:</b> Thursday, March 27, 2025 1=
:51 PM<br><b>To:</b> Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gm=
ail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br><b>Cc:</b> <a=
 href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@li=
sts.ettus.com</a><br><b>Subject:</b> [EXT] [USRP-users] Re: X440 Phase Cohe=
rent but not Phase Aligned<u></u><u></u></p></div><p class=3D"MsoNormal"><u=
></u>=C2=A0<u></u></p><div><p class=3D"MsoNormal"><span style=3D"font-size:=
1pt;color:white">Hi Heath and Marcus, I was actually &quot;R&amp;D&#39;s pl=
ate&quot; for this one. We worked through it and found the issue. The root =
cause is the startup sequence in almost every example UHD script is a bit o=
ut of order and had to be reorganized<u></u><u></u></span></p></div><div><p=
 class=3D"MsoNormal"><span style=3D"font-size:1pt;color:white">ZjQcmQRYFpfp=
tBannerStart<u></u><u></u></span></p></div><table border=3D"0" cellspacing=
=3D"0" cellpadding=3D"0" width=3D"100%" style=3D"width:100%;border-radius:4=
px"><tbody><tr><td style=3D"padding:12pt 0in"><table border=3D"1" cellspaci=
ng=3D"0" cellpadding=3D"0" width=3D"100%" style=3D"width:100%;background:rg=
b(208,216,220);border-width:3pt medium medium;border-style:solid none none;=
border-color:rgb(144,164,174) currentcolor currentcolor"><tbody><tr><td val=
ign=3D"top" style=3D"border:medium;padding:0in 7.5pt 3.75pt 4.5pt"><table b=
order=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"left"><tbody><tr><=
td style=3D"padding:3pt 6pt"><p class=3D"MsoNormal"><b><span style=3D"font-=
size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black">This Mess=
age Is From an External Sender <u></u><u></u></span></b></p></td></tr><tr><=
td style=3D"padding:3pt 6pt"><p class=3D"MsoNormal"><span style=3D"font-siz=
e:9pt;font-family:&quot;Arial&quot;,sans-serif;color:black">This message ca=
me from outside the Laboratory. <u></u><u></u></span></p></td></tr></tbody>=
</table></td></tr></tbody></table></td></tr></tbody></table><div><p class=
=3D"MsoNormal"><span style=3D"font-size:1pt;color:white">ZjQcmQRYFpfptBanne=
rEnd<u></u><u></u></span></p></div><div><div><p class=3D"MsoNormal">Hi Heat=
h and Marcus,<u></u><u></u></p></div><div><p class=3D"MsoNormal"><u></u>=C2=
=A0<u></u></p></div><div><p class=3D"MsoNormal">I was actually &quot;R&amp;=
D&#39;s plate&quot; for this one. We worked through it and found the issue.=
 The root cause is the startup sequence in almost every example UHD script =
is a bit out of order and had to be reorganized in terms of clock setup and=
 synchronized channel tuning. This problem is fixed in UHD 4.7+ if you look=
 at the &quot;tx_waveforms.cpp&quot; example code... For your application, =
just make sure to follow the same startup sequence.<u></u><u></u></p></div>=
<div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div><div><p class=3D"=
MsoNormal">Hope this helps,<u></u><u></u></p></div><div><p class=3D"MsoNorm=
al">Chris<u></u><u></u></p></div><p class=3D"MsoNormal">=C2=A0<u></u><u></u=
></p></div></div></div>_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--0000000000005a4b410631582ba2--

--===============5966614721193207416==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5966614721193207416==--
