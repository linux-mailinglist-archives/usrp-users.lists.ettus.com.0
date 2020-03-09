Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 551EB17E647
	for <lists+usrp-users@lfdr.de>; Mon,  9 Mar 2020 19:02:22 +0100 (CET)
Received: from [::1] (port=43802 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jBMjJ-0006Lw-Qt; Mon, 09 Mar 2020 14:02:17 -0400
Received: from mail-oi1-f175.google.com ([209.85.167.175]:44329)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <varban.metodiev@gmail.com>)
 id 1jBMjF-0006FJ-KU
 for usrp-users@lists.ettus.com; Mon, 09 Mar 2020 14:02:13 -0400
Received: by mail-oi1-f175.google.com with SMTP id d62so11040629oia.11
 for <usrp-users@lists.ettus.com>; Mon, 09 Mar 2020 11:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KhRp9QuHj24GbvHQpgD36zbwmuX+d09lCiVRq4kl/dU=;
 b=IND1xwcPQ2ZdN1wgd1YhW4tPPj/neQe2gTzbO26PFD6xtL7Eq+JMdp3QHCh6mtp3gY
 tp8uGhDu0VPmecDD6ruZldGEg3jr7+3+3STdQA8unn9sI4FD6LVQFiCZt6twA45U2Dwe
 y656l7P045xafeQq8eNwi8HQYubocWrPvxbZ2D4tvRDmkmmjF/aVyoINo2zowcIoFu3H
 tK4Bjv9kUgc3vyYyCh4NalPChiGv/F942dEKF04sTq3KHK6HwASwVEOQN3E0diAmZlDx
 30hdfQGBNIDdnLrJ2HNZWXAwCuaWtADWigrWDC7qrc++BgVCdiq2kWQb7RcqOyAlp5pv
 zKIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KhRp9QuHj24GbvHQpgD36zbwmuX+d09lCiVRq4kl/dU=;
 b=gmeoOiWaJHL/olwt6+ahGO1SpXYIXdW/qZ1v1hlhVHrZsmUzpPjggDkhS+PPqWdObK
 ClpRAMb1k49nbB834RIDk1/zemrqERS5Oaotjum+KAEQFFtvcep+3OA4VFmfvNH6K8y0
 ZWaJ3DrTQzK8RGy7D9iE1JYpLmbqO2CvWjNpfHhE0CEg7BVkB/5ZmvqdjzR/zIKrMR7P
 +HgcKEMX9XmGfUjxFC6+Y0EvBk8AF5vriAKtSid5gvNb5DMoBv4YAvO5+NIxClsceNVZ
 goVmLFYZQo+b8MGdP2bEArJSlRhIdvLXwoQ6IST0gRYCHsgWkAaKifgnKn7vnvQH8WKM
 uqTQ==
X-Gm-Message-State: ANhLgQ06n0yklzdS6GSiPS1XGp69pMdd5JcIxvoIqmB9WrG5awbsvIFa
 PCrD+XuZyGass0T/WXcwgTfTP5rkbeWbeRK1pyHd+IOQ
X-Google-Smtp-Source: ADFU+vvHZNrh/PROhG7GfpNcaeGKfI1kI2YWjk1qDRWqdh/ot39JNMYQUoZ3PA5t4NT1pYKfcHyy/g85S+66D0LVlkM=
X-Received: by 2002:aca:1a05:: with SMTP id a5mr331892oia.113.1583776892014;
 Mon, 09 Mar 2020 11:01:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAKA0MUgctBWSisjvyoP1LFBrNkS=p=KLOZxEDvGioMr8gsdj-w@mail.gmail.com>
 <DM3P110MB0460178FAAAE93EEF0BC7423A9FE0@DM3P110MB0460.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <DM3P110MB0460178FAAAE93EEF0BC7423A9FE0@DM3P110MB0460.NAMP110.PROD.OUTLOOK.COM>
Date: Mon, 9 Mar 2020 11:01:19 -0700
Message-ID: <CAKA0MUgaeDdCyyAd0h5-0PYaLhb5Q876Pmkoxuj1gDWCJD16kw@mail.gmail.com>
To: "Linnenkamp, Nicholas" <nlinnenkamp@perspectalabs.com>
Content-Type: multipart/mixed; boundary="0000000000000e34ce05a06fcb14"
Subject: Re: [USRP-users] [EXTERNAL] B205mini: Setting Q signal component to
 zero distorts the I component
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Varban Metodiev via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Varban Metodiev <varban.metodiev@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
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

--0000000000000e34ce05a06fcb14
Content-Type: multipart/alternative; boundary="0000000000000e34cc05a06fcb12"

--0000000000000e34cc05a06fcb12
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Nicholas,

Thanks a lot for your explanations! I tried to increase the sampling rate
at the receiver - the sine changed itself again and I still have the  same
amplitude differences (attached below).
Another problem that I observed is that it works fine only at 433MHz. When
I tried to set 868MHz/915MHz it became even less readable. At 2.4GHz and
5GHz it was looked like noise...

So...

Try a few different scenarios, (locked clock, unlocked clock, under
sampled, oversampled, etc.) and observe how it changes.

---> May you please tell me a bit more about those locked and unlocked
clocks?


Thanks again,

Varban


On Mon, Mar 9, 2020 at 9:16 AM Linnenkamp, Nicholas <
nlinnenkamp@perspectalabs.com> wrote:

> V.
>
>
>
> I could be wrong=E2=80=A6
>
>
>
> It appears that you are under sampling on the receive USRP.  This is
> probably due to the transmitter and the receiver not sharing the same clo=
ck
> and the receiver is drifting (slower).  You can have the two USRPs share
> the same 10Mhz clock to remove this problem but it is present in every QA=
M
> communication system.  Distributed systems don=E2=80=99t have the benefit=
 of common
> clock even with GPS so it is something that everyone deals with eventuall=
y.
>
>
>
> This is a good picture of when you under sample and get aliasing.
>
>
>
>
> https://dsp.stackexchange.com/questions/31899/how-do-you-simultaneously-u=
ndersample-and-oversample
>
>
>
> This is one of the best treatments of QAM signals that I have ever read.
>
>
>
>
> https://mriquestions.com/uploads/3/4/5/7/34572113/quad_signals_tutorial-l=
yons.pdf
>
>
>
> The real part of the signal is getting shifted from the In Phase to the
> Quadrature and back again over time.  If you were to zero out the Q and
> plot the I you would get this aliasing.  If you were to zero out the I an=
d
> plot the Q, you would also get this aliasing.  If you add them together,
> the real parts make the whole sine wave.  It just shifts, like water, bac=
k
> and forth from the I and Q, periodically, directly proportional to the
> under sampling.
>
>
>
> Try a few different scenarios, (locked clock, unlocked clock, under
> sampled, oversampled, etc.) and observe how it changes.
>
>
>
> In QAM signals the first thing you need to do is estimate clock drift and
> then de-rotate your signal.  You do these things periodically so that you
> can track and properly sample the incoming signal.
>
>
>
> Best of luck!
>
>
> Thanks,
> Nicholas
>
>
>
>
>
> *From:* USRP-users *On Behalf Of *Varban Metodiev via USRP-users
> *Sent:* Monday, March 09, 2020 7:14 AM
> *To:* usrp-users <usrp-users@lists.ettus.com>
> *Subject:* [EXTERNAL] [USRP-users] B205mini: Setting Q signal component
> to zero distorts the I component
>
>
>
> Dear all,
>
>
>
> I have two B205mini devices. One of those is my transmitting side and the
> other one is the receiver. Both are connected via a cable (and an
> attenuator, of course).
>
>
>
> Here is what I execute on the receiver:
>
> *rx_samples_to_file --freq 433e6 --rate 2e6 --bw 1e6 --gain 0 --nsamps 0
> --spb 200*
>
>
>
> And on the transmitter:
>
> *tx_waveforms --rate 1e6 --freq 433e6 --ampl 0.6 --gain 70 --bw 1e6
> --wave-type SINE --wave-freq 10e3 --spb 100 --otw sc16*
>
>
>
> The results are being read in GNU Octave:
>
> *samples_file=3Dfopen('/home/vmetodiev/Development/SDR/uhd/host/build/exa=
mples/usrp_samples.dat',
> 'rb');*
> *data=3Dfread(samples_file, 'int16');*
>
>
>
> So... when both I/Q channels carry the sines that are generated by the
> wave_table function, the results looks fine - attachment "iq.png".
>
>
>
> However, I need to work only with the I channel and force the Q to
> *disappear*, that is why I added the following lines in the
> *tx_waveforms.cpp* code to zero it:
>
>
>
> // Zero the Q component
>
> for (size_t n =3D 0; n < buff.size(); n++) {
>
>         buff[n] =3D std::complex<float>( buff[n].real(), *0 *);
>
> }
>
>
>
> And the result is a strangely distorted I-component sine - attachment
> "i_only.png".
>
>
>
> May you please advise if it is possible to avoid this, because I am doing
> something a bit strange that is not related to the normal I/Q modulations=
?
>
>
>
> Thanks in advance,
>
> V.
>
>
>
>
>
>
>
>
>
>
>

--0000000000000e34cc05a06fcb12
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Nicholas,</div><div><br></div><div>Thanks a lot fo=
r your explanations! I tried to increase the sampling rate at the receiver =
- the sine changed itself again and I still have the=C2=A0 same amplitude d=
ifferences (attached below).</div><div>Another problem that I observed is t=
hat it works fine only at 433MHz. When I tried to set 868MHz/915MHz it beca=
me even less readable. At 2.4GHz and 5GHz it was looked like noise...</div>=
<div><br></div><div>So...</div><div><p class=3D"MsoNormal">Try a few differ=
ent scenarios, (locked clock, unlocked clock, under sampled, oversampled, e=
tc.) and observe how it changes.=C2=A0
</p><p class=3D"MsoNormal">---&gt; May you please tell me a bit more about =
those locked and unlocked clocks?<br></p><p class=3D"MsoNormal"><br></p><p =
class=3D"MsoNormal">Thanks again,</p><p class=3D"MsoNormal">Varban<br></p><=
/div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Mon, Mar 9, 2020 at 9:16 AM Linnenkamp, Nicholas &lt=
;<a href=3D"mailto:nlinnenkamp@perspectalabs.com">nlinnenkamp@perspectalabs=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_4036690471419750234WordSection1">
<p class=3D"MsoNormal">V.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I could be wrong=E2=80=A6<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">It appears that you are under sampling on the receiv=
e USRP.=C2=A0 This is probably due to the transmitter and the receiver not =
sharing the same clock and the receiver is drifting (slower).=C2=A0 You can=
 have the two USRPs share the same 10Mhz clock
 to remove this problem but it is present in every QAM communication system=
.=C2=A0 Distributed systems don=E2=80=99t have the benefit of common clock =
even with GPS so it is something that everyone deals with eventually.<u></u=
><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">This is a good picture of when you under sample and =
get aliasing.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal" style=3D"text-indent:0.5in"><a href=3D"https://dsp.s=
tackexchange.com/questions/31899/how-do-you-simultaneously-undersample-and-=
oversample" target=3D"_blank">https://dsp.stackexchange.com/questions/31899=
/how-do-you-simultaneously-undersample-and-oversample</a>
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">This is one of the best treatments of QAM signals th=
at I have ever read.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a href=3D"https://mriquestions.com=
/uploads/3/4/5/7/34572113/quad_signals_tutorial-lyons.pdf" target=3D"_blank=
">
https://mriquestions.com/uploads/3/4/5/7/34572113/quad_signals_tutorial-lyo=
ns.pdf</a>
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">The real part of the signal is getting shifted from =
the In Phase to the Quadrature and back again over time.=C2=A0 If you were =
to zero out the Q and plot the I you would get this aliasing.=C2=A0 If you =
were to zero out the I and plot the Q, you would
 also get this aliasing.=C2=A0 If you add them together, the real parts mak=
e the whole sine wave.=C2=A0 It just shifts, like water, back and forth fro=
m the I and Q, periodically, directly proportional to the under sampling.<u=
></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Try a few different scenarios, (locked clock, unlock=
ed clock, under sampled, oversampled, etc.) and observe how it changes.=C2=
=A0
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">In QAM signals the first thing you need to do is est=
imate clock drift and then de-rotate your signal.=C2=A0 You do these things=
 periodically so that you can track and properly sample the incoming signal=
.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Best of luck!<u></u><u></u></p>
<p class=3D"MsoNormal"><br>
Thanks,<br>
Nicholas<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><b>From:</b> USRP-users <b>On Behalf Of </b>Varban M=
etodiev via USRP-users<br>
<b>Sent:</b> Monday, March 09, 2020 7:14 AM<br>
<b>To:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [EXTERNAL] [USRP-users] B205mini: Setting Q signal componen=
t to zero distorts the I component<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt">Dear all,</span><u></=
u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt">I have two B205mini d=
evices. One of those is my transmitting side and the other one is the recei=
ver. Both are connected via a cable (and an attenuator, of course).</span><=
u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt">Here is what I execut=
e on the receiver:</span><u></u><u></u></p>
</div>
<div>
<p style=3D"margin:0in 0in 0.0001pt" id=3D"gmail-m_4036690471419750234gmail=
-docs-internal-guid-13e55b55-7fff-fbb5-d6b5-dc506c13c5d9">
<b><span style=3D"font-size:10pt;font-family:&quot;Arial&quot;,sans-serif;c=
olor:black">rx_samples_to_file --freq 433e6 --rate 2e6 --bw 1e6 --gain 0 --=
nsamps 0 --spb 200</span></b><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><u></u>=C2=A0<u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-size:10pt;font-fam=
ily:&quot;Arial&quot;,sans-serif;color:black">And on the transmitter:</span=
><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt" id=3D"gmail-m_4036690471419750234gmail=
-docs-internal-guid-f2481b34-7fff-5686-7914-e109bf4cda08">
<b><span style=3D"font-size:10pt;font-family:&quot;Arial&quot;,sans-serif;c=
olor:black">tx_waveforms --rate 1e6 --freq 433e6 --ampl 0.6 --gain 70 --bw =
1e6 --wave-type SINE --wave-freq 10e3 --spb 100 --otw sc16</span></b><u></u=
><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><u></u>=C2=A0<u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-size:10pt;font-fam=
ily:&quot;Arial&quot;,sans-serif;color:black">The results are being read in=
 GNU Octave:</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><b><span style=3D"font-size:10pt;font-=
family:&quot;Arial&quot;,sans-serif;color:black">samples_file=3Dfopen(&#39;=
/home/vmetodiev/Development/SDR/uhd/host/build/examples/usrp_samples.dat&#3=
9;, &#39;rb&#39;);</span></b><span style=3D"font-size:10pt;font-family:&quo=
t;Arial&quot;,sans-serif;color:black"><br>
<b>data=3Dfread(samples_file, &#39;int16&#39;);</b></span><u></u><u></u></p=
>
<p style=3D"margin:0in 0in 0.0001pt"><u></u>=C2=A0<u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-size:10pt;font-fam=
ily:&quot;Arial&quot;,sans-serif;color:black">So... when both I/Q channels =
carry the sines that are generated by the wave_table function, the results =
looks fine - attachment &quot;iq.png&quot;.</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><u></u>=C2=A0<u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-size:10pt;font-fam=
ily:&quot;Arial&quot;,sans-serif;color:black">However, I need to work only =
with the I channel and force the Q to *disappear*, that is why I added the =
following lines in the
<b><i>tx_waveforms.cpp</i></b> code to zero it:</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt" id=3D"gmail-m_4036690471419750234gmail=
-docs-internal-guid-16d03543-7fff-1f41-7e47-c20b665310ae">
<u></u>=C2=A0<u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-size:10pt;font-fam=
ily:&quot;Arial&quot;,sans-serif;color:black">// Zero the Q component</span=
><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-size:10pt;font-fam=
ily:&quot;Arial&quot;,sans-serif;color:black">for (size_t n =3D 0; n &lt; b=
uff.size(); n++) {</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-size:10pt;font-fam=
ily:&quot;Arial&quot;,sans-serif;color:black">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 buff[n] =3D std::complex&lt;float&gt;( buff[n].real(),
<b>0 </b>);</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-size:10pt;font-fam=
ily:&quot;Arial&quot;,sans-serif;color:black">}</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><u></u>=C2=A0<u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-size:10pt;font-fam=
ily:&quot;Arial&quot;,sans-serif;color:black">And the result is a strangely=
 distorted I-component sine - attachment &quot;i_only.png&quot;.</span><u><=
/u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><u></u>=C2=A0<u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-size:10pt;font-fam=
ily:&quot;Arial&quot;,sans-serif;color:black">May you please advise if it i=
s possible to avoid this, because I am doing something a bit strange that i=
s not related to the normal I/Q modulations?</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><u></u>=C2=A0<u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-size:10pt;font-fam=
ily:&quot;Arial&quot;,sans-serif;color:black">Thanks in advance,</span><u><=
/u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-size:10pt;font-fam=
ily:&quot;Arial&quot;,sans-serif;color:black">V.</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><u></u>=C2=A0<u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><u></u>=C2=A0<u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>
</div>
</div>

</blockquote></div>

--0000000000000e34cc05a06fcb12--
--0000000000000e34ce05a06fcb14
Content-Type: image/png; name="i_new.png"
Content-Disposition: attachment; filename="i_new.png"
Content-Transfer-Encoding: base64
Content-ID: <f_k7krrk6t0>
X-Attachment-Id: f_k7krrk6t0

iVBORw0KGgoAAAANSUhEUgAABIgAAAGOCAYAAAD8TTh5AAAABHNCSVQICAgIfAhkiAAAABl0RVh0
U29mdHdhcmUAZ25vbWUtc2NyZWVuc2hvdO8Dvz4AACAASURBVHic7N15YFTV2QbwJ/tkskz2nSwQ
SEI2SGLYgsgii1YRWrVK0aqf8rlbLa1KXVBQWxWrVVu0FhVt1c+CaBVUZBEiS/aEkIQEsk8m+zIz
2ZfvjwhFSEKWO3PuzDy/v3SS3POgIbnz3ve8x2pgYGAARERERERERERksaxFByAiIiIiIiIiIrFY
ICIiIiIiIiIisnAsEBERERERERERWTgWiIiIiIiIiIiILBwLREREREREREREFo4FIiIiIiIiIiIi
C8cCERERERERERGRhWOBiIiIiIiIiIjIwrFARERERERERERk4VggIiIiIiIiIiKycCwQERERERER
ERFZOBaIiIiIiIiIiIgsHAtEREREREREREQW7pIFop07d2LlypVYvnw5jh07du71LVu2YOXKlViz
Zg0qKiou+ToREREREREREcnTiAUijUaDf/7zn/j000/xxhtv4LnnngMAZGVlITs7G7t27cK9996L
TZs2jfg6ERERERERERHJ14gFosOHD2PZsmWws7PDlClTsGvXLgBAZmYmkpOTAQCJiYlIS0sb8XUi
IiIiIiIiIpIv25E+qFarcerUKfziF7+AVqvFfffdh2uuuQb19fWIjIwEADg4OEClUqGzs3PY1xUK
xU+uGxERMaaQRUVFY/p8IhpaREQE/z4RCcC/e0Ri8O8ekfHx7x2RdIxdOxmxQNTV1QWVSoXXX38d
bW1tWLZsGZYsWQKVSgW1Wg0A6O7uhlarhUKhGPZ1QwQnIiIiIiIiIjJXY6mbjLWYNJQRt5jFxsai
t7cXADAwMAAbGxvY2NggOTkZmZmZAIC8vDwkJCQAwLCvExERERERERGRfI3YQXTllVfi6NGjWLly
JQYGBvDss8/C3t4eiYmJiIiIwK233goA2LhxIwAM+zoREREREREREcnXiAUiGxsbPP3000N+bP36
9WN6nYiIiIiIiIiI5GnELWZERERERERERGT+WCAiIiIiIiIiIrJwLBAREREREREREVk4FoiIiIiI
iIiIiCwcC0RERERERERERBaOBSIiIiIiIiIiIgtnNTAwMCA6BBERERERERERicMOIiIiIiIiIiIi
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
RArGBBEREcmOuRnw5g2ReOeQYRJEDW3dKKxrw2V+jgY5HxEREYmXFKxFyk+NqndkD741/cczDShv
6kDan6dIFRqRIjFBREREspQY6ISm9m7kVLWO+VyvpZTitwneBoiKiIiI5CLe3xHZlS0I2XAAD3+V
jxmvpF7wdeu/7AMAbE6twF/mBIkIkUhRmCAiIiLZyn54Gm7+VxbSdc1jOs9bB8uwarqfgaIiIiIi
ufB0sMY4V1tkrZmKls4evHWwDACwO68OrnZWeCX5LLakV+GuaWxMTXQplqIDICIiGsp9Sf6Y/OJR
dD8/Z1Q/v/9MA0JcbRHjzfH2REREalP02Izzf854KBEBTx/AlvQqRHva4YlfheAvX+aj+dnLBUZI
pBysICIiIlm7c6ovnrs6FNe9d2JUP//hsQrcNpnby4iIiEzB2cdnoKS+HW8d0mHFZG+c/us00SER
KQYriIiISPbun+WPtV8XjPjnHvg8D109vbhzKsvKiYiITEX+o9PP/9ne2kJgJETKwgoiIiKSPWsL
c0zwdsAftw9vlO05tlbmGO/FrWVERERERJfCBBERESlC2p+n4KO0ihH9THZlC6KZICIiIiIiuiQm
iIiISDG+vyce2rX7h/392ZWtiPayM2JERERERETqwB5ERESkGOO97TEnzBnbs2qwOMb9gq9t2F0E
AGhq78HGX4eirasXhXVtCHdngoiIiIiI6FJYQURERIry++l+eGznhQ2r3zhQhq2Z1Wjr6oWlORDx
3CHEPn8YXc/PERQlEREREZGysIKIiIgUZWGUGz44VoH/Hq/Eby7zAgCkFDbgwcsDcUt8/983XBWK
946UiwyTiIiIiEhRWEFERESKszTWA1vSq87/PbmwEUkh2gu+545EH6nDIiIiIiJSLFYQERGR4tw4
0RPLNmfB7MG9cLWzhJ2VBYJcNKLDIiIiIiJSLCaIiIhIkeqeng1nW0sU1LYh1M1WdDhERERERIrG
LWZERKRIzrb9zziYHCIiIiIiGjsmiIiIiIiIiIiITBwTREREREREREREJo4JIiIiIiIiIiIiEyck
QbRnzx4RyxKZvMjISNEhEJkkXntEYvDaI5IerzsiMbq7u8d8DlYQERERERERERGZOCaIiIiIiIiI
iIhMHBNEREREREREREQmjgkiIiIiIiIiIiITxwQREREREREREZGJY4KIiIiIiIiIiMjEMUFERERE
RERERGTiLpkg2rZtGxYvXoyFCxfi8OHD549v2rQJixcvxvLly1FSUnLJ40REREREREREJE9DJogq
Kirw0Ucf4dNPP8Vrr72GZ555BgBw/PhxpKenY/v27bj33nuxfv36IY8TEREREREREZF8DZkgSk5O
xoIFC2BlZYXQ0FBs374dAJCWlobExEQAQEJCAo4ePTrkcSIiIiIiIiIiki/Lob6o0+lw+vRp3HDD
DdDr9bjvvvtwzTXXoLq6GlFRUQAAGxsbaLVatLe3D3pco9FccN558+Zh9erVww4yNzd3pP8uIhoA
ryUiMXjtEYnBa49IerzuiAwnMjJS0vUuShBt2bIFu3btgqenJ9zd3aHVavHqq6+iqakJCxYswPz5
86HVaqHT6QAAnZ2d0Ov10Gg0gx4fyOuvv4558+YZ8Z9GRERERERERKRMw0249vT0IC4ubszrXbTF
bNmyZXjvvfewceNGxMbGoru7GwDQ19cHCwsLWFhYIDExEWlpaQCAzMxMxMfHA8Cgx4mIiIiIiIiI
SL6G3GJ25ZVX4tChQ1i8eDH6+vrw9NNPw9raGgkJCYiMjMSKFSsAAOvWrQOAQY8TEREREREREZF8
mfX19fVJvejq1atx/fXXc4sZEREREREREdEYnNtidvLkyTGdZ8gpZkREREREREREpH5MEBERERER
ERERmTgmiIiIiIiIiIiITBwTREREREREREREJk7yBNGmTZtw5MgRbNq0CSUlJVIvT2QSNm3ahMWL
F2P58uUDXme9vb1Yu3Ytrr32WixatAjfffedgCiJ1OdS1945zc3NWLBgAd8HiQxkONfetm3bsHjx
YixcuBCHDx+WOEIi9bnUddfT04O//vWvuPrqq3HttdciLS1NQJREpmHr1q3o7e0d83kkTRAdP34c
6enpSExMxFVXXYX169dLuTyRSTh3nW3fvh333nvvgNfZ7t270draii+++ALvv/8+nnjiCfT09AiI
lkg9hnPtAUBfXx8ef/xxdHZ2ShwhkToN59qrqKjARx99hE8//RSvvfYannnmGQGREqnHcK67/fv3
o7GxETt27MCGDRvw3HPPCYiUSP1WrFiBdevWGeRckiaI0tLSkJiYCAAIDQ3F0aNHpVyeyCT8/DpL
SEgY8Drz9fXFqlWrAABubm5wcnKSNEYiNRrOtQcAb775JpKSkhAcHCxhdETqNZxrLzk5GQsWLICV
lRVCQ0Oxfft2qcMkUpXhXHceHh6oq6tDVVUVcnNz4eXlJXWYRCbhgw8+wMMPP2yQc0maIKquroa/
vz8AwMrKClqtFu3t7VKGQKR6P7/ObGxsBrzOYmJiEBUVheLiYqxcuRJ33nknLCwsRIRLpBrDufaS
k5NRUVGBG264QUSIRKo0nGtPp9MhPT0dN9xwAxYsWIAvv/xSRKhEqjGc6y4iIgI2Nja49dZbsWHD
BixfvlxEqEQ0ApZSLqbVaqHT6QAA3d3d0Ov10Gg0UoZApHo/v846OzsHvc6+/PJLfPrpp3jwwQcR
FxcndZhEqjOca+/dd99FfX09li1bhvz8fNx///14+eWXERQUJCJkIlUYzrXX0dEBrVaLV199FU1N
TViwYAHmz58PW1tbESETKd5w3/OmTJmC++67D42NjVi8eDG+++47WFlZiQiZiIZB0gRRYmIi3njj
DVhbW+Pf//43XF1d8eKLL0oZApHqlZeXIy0tDR0dHSgvLz9/nfX19aG3txcWFhYoKipCXl4e5s2b
hz179mDPnj2iwyZSvOFcez9PxtbU1GDSpEnYunWrwKiJlG84115xcTGKi4vx4osvor29He3t7Xjt
tddYPUs0SsO57s5tO+vq6kJbWxsaGhrw0ksvwdJS0o+gRCYhKysLa9asGfN5JL06ExISEBkZiays
LOh0OsyfPx92dnZShkCkeqGhoSgrK8OOHTsA4Px1VllZiV27dmHFihUo+//t3M0JhDAQgNFZD4IH
K7EBG9AubFBIARa0IBahe1v2KOw/8949IZch8AVyvca6rjHP833dNE1edOAJZ2bvUVVV0TSNexCe
dGb2uq6LbduilBIREeM4Rtu23zw2/LUzc9f3fSzLEqWU2Pc9hmHw7yW8SV3XL9nnchzH8ZKdAAAA
APhLH/2kGgAAAIDfIxABAAAAJCcQAQAAACQnEAEAAAAkJxABAAAAJCcQAQAAACQnEAEAAAAkJxAB
AAAAJCcQAQAAACQnEAEAAAAkJxABAAAAJCcQAQAAACQnEAEAAAAkJxABAAAAJCcQAQAAACQnEAEA
AAAkdwMXLklCjAY7rAAAAABJRU5ErkJggg==
--0000000000000e34ce05a06fcb14
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--0000000000000e34ce05a06fcb14--

