Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 22125716FCC
	for <lists+usrp-users@lfdr.de>; Tue, 30 May 2023 23:33:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 23A003848B0
	for <lists+usrp-users@lfdr.de>; Tue, 30 May 2023 17:33:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685482398; bh=khxNK6uYYbPFa/5DYtEKc2oVTqgHYNq/M7l6cUqo8m8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=x7bohrr682OKKB97UGwopzAEdKraPVfnD7R8UldVsS5Fa4Jy1YZdEvGEcGrDcgGpn
	 I0Y3Mix8nL9P0Pr5ma4ocnxpgzklOnDFdMcu21gZ4lRsmVsG8uKTL9p1wmxsAGZ2wf
	 IKVtXAbFIY3mRJw8LLORESf53PTXakDP2wo+3/CCiVywIxw4r6OT6kpi52ZRbDg1Nk
	 aC7Whp0kab1HwKEf64/6TOHH565R0ynQHw5q3Kz+jO2FdgfDHnOlH82zLwoRMoa5gr
	 P1JzjNhOgySp56z4so6KWgnUySOoXPX0MBCKPVdVtZE3vCJ5kXvrh1GGRcDk0fA15N
	 f7CG42vpqWRhA==
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id B748C38484F
	for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 17:32:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=chaosinc.com header.i=@chaosinc.com header.b="iKeHNWuW";
	dkim-atps=neutral
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-626157a186bso1798866d6.1
        for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 14:32:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chaosinc.com; s=google; t=1685482338; x=1688074338;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wAH0iytdjnC44v6jSSTluqWEvaas3FNqC7uzuZfV6Xk=;
        b=iKeHNWuWuzdvocDlXGAeYiL6CXGhYG5AV85+yJ4DCEX7c31FWiti5r6ks26kwPfoou
         AZ6d0NBYdyenciUShdjXidQUCwykDKUljPHZJsyEZbAdFlkhrXr6KV9zoUzyqAA4mGM7
         /EF03zCERT08FFmrRt4caUduteWfb0zfyYh4lVp5xDogX92Kz0/9lW2G98P2/YEXPOUn
         iPKiKVSAnTZOGYLqvSlH7rmcUngz1Idg8BmP5VrB8D2YkusHxoNnwlQ01bRF/FJ6M/Rz
         3DWhRSmCkWn7OFZtFFsCEHd+u8Nka7BJqH3HOFp57gvGfncpzDBZ5EekxZX6qnW/XlEc
         eUvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685482338; x=1688074338;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wAH0iytdjnC44v6jSSTluqWEvaas3FNqC7uzuZfV6Xk=;
        b=U3Vd3fPHiDNOtSFjwEY7uPSUK5i/hHvZys7csdBNLI3FsfUiqzTaw87WcwFbEBAzSb
         jCCFWK2J5XchMeA6/6dWpClXu8VWIHC7NozDBu2RPLRVyJPj2T/kpCarjZkmuShR8Kx+
         p2kviJO5jNIMmf3Gr4VNZPy03CWbGCayZSzdNe9e6q+sNv8LeNaiZ3IqVvk37IfJ5IAr
         LKa9tSTtAF8qO8Zlk0Qh4PKRN348P/Tszhv1x2sUL8qRhkdprAaXbqhiush7A7WHcHOf
         g2qYQ+5ZqWWk729+MySyaS0LQekIVMRK2obwhcx+Jnu3lPkSh7fB/ML9HK33feygx/Y3
         e+9Q==
X-Gm-Message-State: AC+VfDzA1Nl6pBh6zvn4iG662NRmem1V05at8IiquLl9FsJRH/osNdZS
	g++0rhM07xVBjR7ubQOUX3dFjOfzwh7ahIt6RtREGg==
X-Google-Smtp-Source: ACHHUZ6rM4tAxXnYWJR0mn2ttEZUd6Oioc5J+9c/rsh0z8gnlXmOVmKG+5LqN6wdY8h39EUu2ra/tvtwab3YTVsYtus=
X-Received: by 2002:a05:6214:c49:b0:623:8818:197e with SMTP id
 r9-20020a0562140c4900b006238818197emr3206696qvj.21.1685482338097; Tue, 30 May
 2023 14:32:18 -0700 (PDT)
MIME-Version: 1.0
References: <W203olqQs1iBI2xG9mGjiw1svSW52XqTjccB72ejEs@lists.ettus.com>
 <c157a530-5c52-0fd4-79a4-0c65810ee0f0@gmail.com> <JN1P275MB053556431057E296A551C8C695469@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
 <CAB__hTSxoCSY8PahuLUSC-ig6FNr_r5PPsaobNh9KK8S6xNxCA@mail.gmail.com>
 <7ed5a34a-8862-09ae-edfa-d5ca15947915@gmail.com> <JN1P275MB053547F1D25B83244EE59F8795469@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
 <CAL7q81shBqtUzSaHseMO59rq1u3QSxSrA7bCaX-BVZo7FNRLZQ@mail.gmail.com>
 <CANq7nXcTe6FrDNXHiYUKY7VU-47UqdW3PtZj5eafBP84-2HhbA@mail.gmail.com>
 <4da2d23c-0854-582c-a191-deb5476488fe@gmail.com> <CANq7nXeVL8ActLms9N5kCAb78ALSrKPBb-agALYJjzNk9Yi9mg@mail.gmail.com>
 <CAEXYVK6JLh_C4cb6GbPYCFxNBv=U3AgUdqP=yBkmSH7Vey4wOQ@mail.gmail.com>
 <CANq7nXf266iBvAARXfrmebaTeZFskaCPwvXHvvWT+Hzg-sVghg@mail.gmail.com>
 <CAEXYVK5NEVExmcf0uhbXjOABwRbbxC+yvY0pZ7dBX22rYom27Q@mail.gmail.com>
 <CANq7nXfUvuDaLbOx_admWoNNsVt1eJN15L65uS-VmniAhh=u1w@mail.gmail.com> <CAEXYVK6ONWM8ayhz+V9beCNu56ewAP5_GJtDcY0du2JXJpGa4g@mail.gmail.com>
In-Reply-To: <CAEXYVK6ONWM8ayhz+V9beCNu56ewAP5_GJtDcY0du2JXJpGa4g@mail.gmail.com>
From: Mena Ghebranious <mena@chaosinc.com>
Date: Tue, 30 May 2023 14:32:05 -0700
Message-ID: <CANq7nXdn4mjih-_YLMm349oJPJZz1tFGeozy9NYc_Xic5wUpdA@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: OIX644OWLH4UDECIC3I4GTSTXU3PEBCT
X-Message-ID-Hash: OIX644OWLH4UDECIC3I4GTSTXU3PEBCT
X-MailFrom: mena@chaosinc.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, Jonathon Pendlum <jonathon.pendlum@ettus.com>, Leon Wabeke <LWabeke@csir.co.za>, Rob Kossler <rkossler@nd.edu>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 - GPIO ATR output to TX output delay
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OIX644OWLH4UDECIC3I4GTSTXU3PEBCT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3930609729058438524=="

--===============3930609729058438524==
Content-Type: multipart/alternative; boundary="00000000000009b32605fceff0ec"

--00000000000009b32605fceff0ec
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I apologize, I think I must be missing something.  This is the filter
(Xilinx IP) I see implemented in the N320 master code:

https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/n3xx/dboard=
s/rh/n3xx.v#L3431

We are planning on running various sample rates running from 1 to possibly
61.44Msps  - for our current experiment we are using 20.480Msps

On Tue, May 30, 2023 at 2:07=E2=80=AFPM Brian Padalino <bpadalino@gmail.com=
> wrote:

> On Tue, May 30, 2023 at 4:42=E2=80=AFPM Mena Ghebranious <mena@chaosinc.c=
om>
> wrote:
>
>> I don't see any bypass logic in the FPGA code, but in any case, the N320
>> only supports three master clock rates, none of which is our desired
>> sampling rate:
>>
>> https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Supp=
orted_Sample_Rates
>>
>
> What is your desired sample rate?
>
> Bypassing the hbf filtering happens here:
>
>
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/duc=
.v#L193
>
> Brian
>
>>

--00000000000009b32605fceff0ec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I apologize, I think I must be missing something.=C2=A0 Th=
is=C2=A0is the filter (Xilinx IP) I see implemented in the N320 master code=
:<div><br></div><div><a href=3D"https://github.com/EttusResearch/uhd/blob/m=
aster/fpga/usrp3/top/n3xx/dboards/rh/n3xx.v#L3431">https://github.com/Ettus=
Research/uhd/blob/master/fpga/usrp3/top/n3xx/dboards/rh/n3xx.v#L3431</a><br=
></div><div><br></div><div>We are planning on running various sample rates =
running from 1 to possibly 61.44Msps=C2=A0 - for our current experiment we =
are using 20.480Msps</div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Tue, May 30, 2023 at 2:07=E2=80=AFPM Brian Pad=
alino &lt;<a href=3D"mailto:bpadalino@gmail.com">bpadalino@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr"><div dir=3D"ltr">On Tue, May 30, 2023 at 4:42=E2=80=AFPM Mena Ghe=
branious &lt;<a href=3D"mailto:mena@chaosinc.com" target=3D"_blank">mena@ch=
aosinc.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I don&#39;t see any b=
ypass logic in the FPGA code, but in any case, the N320 only supports three=
 master clock rates, none of which is our desired sampling rate:<div><a hre=
f=3D"https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Su=
pported_Sample_Rates" target=3D"_blank">https://kb.ettus.com/USRP_N300/N310=
/N320/N321_Getting_Started_Guide#Supported_Sample_Rates</a></div></div></bl=
ockquote><div><br></div><div>What is your desired sample rate?</div><div><b=
r></div><div>Bypassing the hbf filtering happens here:</div><div><br></div>=
<div>=C2=A0=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/blob/maste=
r/fpga/usrp3/lib/rfnoc/duc.v#L193" target=3D"_blank">https://github.com/Ett=
usResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/duc.v#L193</a></div><div><b=
r></div><div>Brian</div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div class=3D"gmail_quote"><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>

--00000000000009b32605fceff0ec--

--===============3930609729058438524==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3930609729058438524==--
