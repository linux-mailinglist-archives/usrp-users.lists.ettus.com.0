Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0359635F6
	for <lists+usrp-users@lfdr.de>; Thu, 29 Aug 2024 01:38:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1B478385814
	for <lists+usrp-users@lfdr.de>; Wed, 28 Aug 2024 19:38:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724888287; bh=2bvUkHHD3yG29ZumnnG3+e8edTVCoIraiGvTxMGWqAc=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=L3mxFq0seHVkAUghdu0+B5cKUZ2RO58AZ90QcWmrTqGro3X3Ps5bZWvamql+5wmG8
	 EiS2d6DzhG/B/KEZEgNNDXlkip/8oX/X4FZeRmkzDTYqJGRnlfb+LEwcH1ZlQNWUmE
	 Xgg10uJyw8twBtQxBztv40RNelRT0m3gl4nLTsXIdgIoyporFNJsXkdV9J3JziqVW1
	 SpEcmgXxm7p2PrUzD6TQ/qH4woNtQPb5Txd/XZllUG9vdTR2iZIvxy/5HgNeG+oogU
	 lX1jfcBuqg2tKRMxoeSWC+MauniHRBxp+huJp3C0WToveGEbK5EBm06dwHKAhQMoYk
	 9ZyrG4dQgjxpQ==
Received: from resqmta-c2p-570503.sys.comcast.net (resqmta-c2p-570503.sys.comcast.net [96.102.19.37])
	by mm2.emwd.com (Postfix) with ESMTPS id 949413856C4
	for <usrp-users@lists.ettus.com>; Wed, 28 Aug 2024 19:37:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=comcast.net header.i=@comcast.net header.b="XEcNiSbM";
	dkim-atps=neutral
Received: from resomta-c2p-555922.sys.comcast.net ([96.102.18.230])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 256/256 bits)
	(Client did not present a certificate)
	by resqmta-c2p-570503.sys.comcast.net with ESMTPS
	id jOq6s7gFpmPvHjSDssxD7L; Wed, 28 Aug 2024 23:37:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1724888228;
	bh=VmnPuQob5t6qsdHo3UXV6W40UZuxzy5Nid1ahxyHHaQ=;
	h=Received:Received:Content-Type:Message-ID:Date:MIME-Version:
	 Subject:To:From:Xfinity-Spam-Result;
	b=XEcNiSbMPY3RbbVivvkqvpLu5xuMQtFJsXEa5pnlW3FvqHNyajtDlagAV+AjCoIoc
	 p6GRVnNkekTJABpidM4uKa0z61cjvJ6YRjb8RCoaS887IFv3EIOOgnCTkiTMPE/abN
	 fhrF7zO3aduH6RlQnDTkUE6QF7Il0FMECkd2vzKGccwO/2ntxymDZM4+1C8mIGsO/q
	 TQXtew7mg//HYd0Oc35fmO/Pt6yDkXSoGzYpdxa+t6E93b5RCpVT4+A02uaN2Ljp78
	 WeH7peh+v29KJT75tweruWzS0J2yiHYFFhsyxnFIa9dABESPR36MMxrV4IAcQOL4kP
	 ybMSuAnMu4r8A==
Received: from [IPV6:2601:647:4b00:aafb:8de4:4424:40be:e94d]
 ([IPv6:2601:647:4b00:aafb:8de4:4424:40be:e94d])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 256/256 bits)
	(Client did not present a certificate)
	by resomta-c2p-555922.sys.comcast.net with ESMTPSA
	id jSDWsqbPZo31gjSDWso5Bt; Wed, 28 Aug 2024 23:36:47 +0000
Message-ID: <f1245e53-00e4-47c4-9e22-41f3ec8516e3@comcast.net>
Date: Wed, 28 Aug 2024 16:36:45 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <CAOYGa72XPJnAFtD40sKpLFPnJf+627G49SgRmMPRPt9a79+U2Q@mail.gmail.com>
 <0bd53570-3d91-497f-ba4e-6c1df0ce87f1@gmail.com>
 <CAOYGa70FL9bHH6UR8u7WVZVoN4Nb8DA3KnsmHJrbJ2f2RCovPQ@mail.gmail.com>
Content-Language: en-US
In-Reply-To: <CAOYGa70FL9bHH6UR8u7WVZVoN4Nb8DA3KnsmHJrbJ2f2RCovPQ@mail.gmail.com>
X-CMAE-Envelope: MS4xfLhAVCSmQu420e/BR464ArHefkuYkwsUo0IDUr86qRPTij7buh0MZK1POH5gVpIwiav+0o5Kt5cZJ/2Zp2961+ehVBWJwtEujnV3VVMcZO60SXlDkBax
 4/qQaqT+eHIUT2rnLT7GFia0L+0IvqhxXRmxBEHem1nuFZLopjtPI2nXB223WdgDGzLmq54ZBGI0+v0cDEBi4rinJNwk2zjp+gl0hmox6b27D41gh+y2bs/F
 e6EzNApNtOA47owWjx0qJ6BSX+AACFY2WDNeq5oiykh7DmUVoAeuOZWkR2FUn77wa56TgTA5eBAXRqXgZAF3PQ==
Message-ID-Hash: KS2I6SL3JC6PHE6MHZZNQ3R27VHWLET4
X-Message-ID-Hash: KS2I6SL3JC6PHE6MHZZNQ3R27VHWLET4
X-MailFrom: w6rz@comcast.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 Noise Figure
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KS2I6SL3JC6PHE6MHZZNQ3R27VHWLET4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Ron Economos via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ron Economos <w6rz@comcast.net>
Content-Type: multipart/mixed; boundary="===============6447586770272837727=="

This is a multi-part message in MIME format.
--===============6447586770272837727==
Content-Type: multipart/alternative;
 boundary="------------Gd3ogjeA0PEV9yzxHjJzJQtU"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Gd3ogjeA0PEV9yzxHjJzJQtU
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Here's an article that may help with your NF calculations.

"Calculating noise figure and third-order intercept in ADCs"

https://www.ti.com/lit/an/slyt090/slyt090.pdf

I wrote a little C program from it.

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, char **argv)
{
 =C2=A0=C2=A0=C2=A0 double=C2=A0=C2=A0 k, t, dBm1Hz, dBm500Hz;
 =C2=A0=C2=A0=C2=A0 double=C2=A0=C2=A0 vpp, p, sinad, rate, VdBm, dBHz, d=
BmHz;

 =C2=A0=C2=A0=C2=A0 if (argc !=3D 4) {
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fprintf(stderr, "usage: bdr <=
p-p voltage> <sinad> <sample=20
rate>\n");
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 exit(-1);
 =C2=A0=C2=A0=C2=A0 }

 =C2=A0=C2=A0=C2=A0 vpp =3D atof(argv[1]);
 =C2=A0=C2=A0=C2=A0 sinad =3D atof(argv[2]);
 =C2=A0=C2=A0=C2=A0 rate =3D atof(argv[3]);

 =C2=A0=C2=A0=C2=A0 k =3D 1.38064852e-23;
 =C2=A0=C2=A0=C2=A0 t =3D 290.0;
 =C2=A0=C2=A0=C2=A0 p =3D k * t * 1 * 1000.0;
 =C2=A0=C2=A0=C2=A0 dBm1Hz =3D 10.0 * log10(p);
 =C2=A0=C2=A0=C2=A0 p =3D k * t * 500 * 1000.0;
 =C2=A0=C2=A0=C2=A0 dBm500Hz =3D 10.0 * log10(p);

 =C2=A0=C2=A0=C2=A0 p =3D (vpp * vpp) / (50 * 8);
 =C2=A0=C2=A0=C2=A0 VdBm =3D (10.0 * log10(p)) + 30;
 =C2=A0=C2=A0=C2=A0 dBHz =3D 10.0 * log10(rate / 2);
 =C2=A0=C2=A0=C2=A0 dBmHz =3D (VdBm - 1) - sinad - dBHz;
 =C2=A0=C2=A0=C2=A0 printf("overload =3D %.2f dBm\n", VdBm);
 =C2=A0=C2=A0=C2=A0 printf("Noise Figure =3D %.2f dB, %.2f dBm/Hz\n", dBm=
Hz - dBm1Hz, dBmHz);
 =C2=A0=C2=A0=C2=A0 printf("MDS in 500 Hz bandwidth =3D %.2f dBm\n", dBm5=
00Hz + (dBmHz -=20
dBm1Hz));
 =C2=A0=C2=A0=C2=A0 printf("500 Hz Dynamic Range =3D %.2f dB\n", VdBm - (=
dBm500Hz +=20
(dBmHz - dBm1Hz)));
 =C2=A0=C2=A0=C2=A0 return 0;
}

Ron

On 8/28/24 15:36, Steve Hamn wrote:
> Hi Marcus,
>
> Thanks. Understood, that all makes sense to me. Part of this is I'm=20
> trying to understand the base Noise Figure as a starting point so I=20
> can design my filtered low noise front end as you suggest.
>
> I guess you're confirming that 36.5dB is expected from the X440 and=20
> there's nothing crazy wrong about my math.
>
> Thanks,
>
> Steve
>
> On Wed, Aug 28, 2024, 3:15 PM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 28/08/2024 18:04, Steve Hamn wrote:
>     > Hello,
>     >
>     > I have been trying to estimate the Noise Figure of the X440. I
>     looked
>     > through all the documentation I could find and couldn't find it
>     > anywhere, so I tried to calculate it myself.
>     >
>     > It looks like the ZU2xDR RFSoC has a NSD of -146dBFS/Hz @ 2.4GHz
>     >
>     (https://docs.amd.com/r/en-US/ds926-zynq-ultrascale-plus-rfsoc/RF-A=
DC-Performance-Characteristics)
>
>     > and the Full Scale Input is 1Vppd (0.707Vrms) @ 100ohms
>     >
>     (https://docs.amd.com/r/en-US/ds926-zynq-ultrascale-plus-rfsoc/RF-A=
DC-Electrical-Characteristics)
>
>     > .
>     >
>     > Based on this information I calculate NSD of -139dBm/Hz
>     [-146dBFS/Hz +
>     > 10log10(0.707^2/100=CE=A9*1000)], so -139dBm/Hz - -174dBm/Hz give=
s Noise
>     > Figure of 35dB? Add the 1.5 insertion loss of the TCM2-63WX+ on t=
he
>     > Daughterboard (https://files.ettus.com/manual/page_fbx.html),
>     gives an
>     > approximate noise figure of the X440 at 36.5dB for 2.4GHz.
>     >
>     > Is this correct? Seems high, I don't have much experience
>     calculating
>     > noise figure from ADC's so I'm wondering if I'm missing something=
.
>     >
>     > Thanks,
>     >
>     > Steve
>     >
>     >
>     "Naked" ADCs are inherently very very noisy devices. Since the
>     X440 has
>     no RF pre-processing of any importance, you'd at
>     =C2=A0=C2=A0 least need a low-noise filtered front-end to beat the =
inherent ADC
>     noise into insignificance.=C2=A0=C2=A0=C2=A0 For other USRP radios,=
 mostly,
>     =C2=A0=C2=A0 that's already taken care of, and the receiver noise-f=
igure is
>     much
>     more "respectable"=C2=A0 (not, radio astronomy respectable,
>     =C2=A0=C2=A0 but adequate to put onto an over-the-air antenna).
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------Gd3ogjeA0PEV9yzxHjJzJQtU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Here's an article that may help with your NF calculations.</p>
    <p>"Calculating noise figure and third-order intercept in ADCs"<br>
    </p>
    <p><a class=3D"moz-txt-link-freetext" href=3D"https://www.ti.com/lit/=
an/slyt090/slyt090.pdf">https://www.ti.com/lit/an/slyt090/slyt090.pdf</a>=
</p>
    <p>I wrote a little C program from it.<br>
    </p>
    <p>#include &lt;stdio.h&gt;<br>
      #include &lt;stdlib.h&gt;<br>
      #include &lt;math.h&gt;<br>
      <br>
      int main(int argc, char **argv)<br>
      {<br>
      =C2=A0=C2=A0=C2=A0 double=C2=A0=C2=A0 k, t, dBm1Hz, dBm500Hz;<br>
      =C2=A0=C2=A0=C2=A0 double=C2=A0=C2=A0 vpp, p, sinad, rate, VdBm, dB=
Hz, dBmHz;<br>
      <br>
      =C2=A0=C2=A0=C2=A0 if (argc !=3D 4) {<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fprintf(stderr, "usage: =
bdr &lt;p-p voltage&gt;
      &lt;sinad&gt; &lt;sample rate&gt;\n");<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 exit(-1);<br>
      =C2=A0=C2=A0=C2=A0 }<br>
      <br>
      =C2=A0=C2=A0=C2=A0 vpp =3D atof(argv[1]);<br>
      =C2=A0=C2=A0=C2=A0 sinad =3D atof(argv[2]);<br>
      =C2=A0=C2=A0=C2=A0 rate =3D atof(argv[3]);<br>
      <br>
      =C2=A0=C2=A0=C2=A0 k =3D 1.38064852e-23;<br>
      =C2=A0=C2=A0=C2=A0 t =3D 290.0;<br>
      =C2=A0=C2=A0=C2=A0 p =3D k * t * 1 * 1000.0;<br>
      =C2=A0=C2=A0=C2=A0 dBm1Hz =3D 10.0 * log10(p);<br>
      =C2=A0=C2=A0=C2=A0 p =3D k * t * 500 * 1000.0;<br>
      =C2=A0=C2=A0=C2=A0 dBm500Hz =3D 10.0 * log10(p);<br>
      <br>
      =C2=A0=C2=A0=C2=A0 p =3D (vpp * vpp) / (50 * 8);<br>
      =C2=A0=C2=A0=C2=A0 VdBm =3D (10.0 * log10(p)) + 30;<br>
      =C2=A0=C2=A0=C2=A0 dBHz =3D 10.0 * log10(rate / 2);<br>
      =C2=A0=C2=A0=C2=A0 dBmHz =3D (VdBm - 1) - sinad - dBHz;<br>
      =C2=A0=C2=A0=C2=A0 printf("overload =3D %.2f dBm\n", VdBm);<br>
      =C2=A0=C2=A0=C2=A0 printf("Noise Figure =3D %.2f dB, %.2f dBm/Hz\n"=
, dBmHz -
      dBm1Hz, dBmHz);<br>
      =C2=A0=C2=A0=C2=A0 printf("MDS in 500 Hz bandwidth =3D %.2f dBm\n",=
 dBm500Hz +
      (dBmHz - dBm1Hz));<br>
      =C2=A0=C2=A0=C2=A0 printf("500 Hz Dynamic Range =3D %.2f dB\n", VdB=
m - (dBm500Hz +
      (dBmHz - dBm1Hz)));<br>
      =C2=A0=C2=A0=C2=A0 return 0;<br>
      }<br>
    </p>
    <p>Ron<br>
    </p>
    <div class=3D"moz-cite-prefix">On 8/28/24 15:36, Steve Hamn wrote:<br=
>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAOYGa70FL9bHH6UR8u7WVZVoN4Nb8DA3KnsmHJrbJ2f2RCovPQ@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"auto">
        <div>Hi Marcus,</div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">Thanks. Understood, that all makes sense to me.
          Part of this is I'm trying to understand the base Noise Figure
          as a starting point so I can design my filtered low noise
          front end as you suggest.</div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">I guess you're confirming that 36.5dB is
          expected from the X440 and there's nothing crazy wrong about
          my math.</div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">Thanks,</div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">Steve</div>
        <div dir=3D"auto"><br>
          <div class=3D"gmail_quote" dir=3D"auto">
            <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 28, 2024, 3=
:15
              PM Marcus D. Leech &lt;<a
                href=3D"mailto:patchvonbraun@gmail.com"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
patchvonbraun@gmail.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote"
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">O=
n
              28/08/2024 18:04, Steve Hamn wrote:<br>
              &gt; Hello,<br>
              &gt;<br>
              &gt; I have been trying to estimate the Noise Figure of
              the X440. I looked <br>
              &gt; through all the documentation I could find and
              couldn't find it <br>
              &gt; anywhere, so I tried to calculate it myself.<br>
              &gt;<br>
              &gt; It looks like the ZU2xDR RFSoC has a NSD of
              -146dBFS/Hz @ 2.4GHz <br>
              &gt; (<a
href=3D"https://docs.amd.com/r/en-US/ds926-zynq-ultrascale-plus-rfsoc/RF-=
ADC-Performance-Characteristics"
                rel=3D"noreferrer noreferrer" target=3D"_blank"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
https://docs.amd.com/r/en-US/ds926-zynq-ultrascale-plus-rfsoc/RF-ADC-Perf=
ormance-Characteristics</a>)
              <br>
              &gt; and the Full Scale Input is 1Vppd (0.707Vrms) @
              100ohms <br>
              &gt; (<a
href=3D"https://docs.amd.com/r/en-US/ds926-zynq-ultrascale-plus-rfsoc/RF-=
ADC-Electrical-Characteristics"
                rel=3D"noreferrer noreferrer" target=3D"_blank"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
https://docs.amd.com/r/en-US/ds926-zynq-ultrascale-plus-rfsoc/RF-ADC-Elec=
trical-Characteristics</a>)
              <br>
              &gt; .<br>
              &gt;<br>
              &gt; Based on this information I calculate NSD of
              -139dBm/Hz [-146dBFS/Hz + <br>
              &gt; 10log10(0.707^2/100=CE=A9*1000)], so -139dBm/Hz -
              -174dBm/Hz gives Noise <br>
              &gt; Figure of 35dB? Add the 1.5 insertion loss of the
              TCM2-63WX+ on the <br>
              &gt; Daughterboard (<a
                href=3D"https://files.ettus.com/manual/page_fbx.html"
                rel=3D"noreferrer noreferrer" target=3D"_blank"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
https://files.ettus.com/manual/page_fbx.html</a>),
              gives an <br>
              &gt; approximate noise figure of the X440 at 36.5dB for
              2.4GHz.<br>
              &gt;<br>
              &gt; Is this correct? Seems high, I don't have much
              experience calculating <br>
              &gt; noise figure from ADC's so I'm wondering if I'm
              missing something.<br>
              &gt;<br>
              &gt; Thanks,<br>
              &gt;<br>
              &gt; Steve<br>
              &gt;<br>
              &gt;<br>
              "Naked" ADCs are inherently very very noisy devices.=C2=A0
              Since the X440 has <br>
              no RF pre-processing of any importance, you'd at<br>
              =C2=A0=C2=A0 least need a low-noise filtered front-end to b=
eat the
              inherent ADC <br>
              noise into insignificance.=C2=A0=C2=A0=C2=A0 For other USRP=
 radios,
              mostly,<br>
              =C2=A0=C2=A0 that's already taken care of, and the receiver
              noise-figure is much <br>
              more "respectable"=C2=A0 (not, radio astronomy respectable,=
<br>
              =C2=A0=C2=A0 but adequate to put onto an over-the-air anten=
na).<br>
              <br>
              <br>
              _______________________________________________<br>
              USRP-users mailing list -- <a
                href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk"
                rel=3D"noreferrer" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.co=
m</a><br>
              To unsubscribe send an email to <a
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                target=3D"_blank" rel=3D"noreferrer" moz-do-not-send=3D"t=
rue"
                class=3D"moz-txt-link-freetext">usrp-users-leave@lists.et=
tus.com</a><br>
            </blockquote>
          </div>
        </div>
      </div>
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
  </body>
</html>

--------------Gd3ogjeA0PEV9yzxHjJzJQtU--

--===============6447586770272837727==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6447586770272837727==--
