Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A4EDA01
	for <lists+usrp-users@lfdr.de>; Mon, 29 Apr 2019 02:01:27 +0200 (CEST)
Received: from [::1] (port=42028 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hKtjU-0002yq-SO; Sun, 28 Apr 2019 20:01:20 -0400
Received: from mail-vs1-f47.google.com ([209.85.217.47]:46772)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <ejkreinar@gmail.com>) id 1hKtiw-0002qz-VS
 for usrp-users@lists.ettus.com; Sun, 28 Apr 2019 20:01:17 -0400
Received: by mail-vs1-f47.google.com with SMTP id e2so4896131vsc.13
 for <usrp-users@lists.ettus.com>; Sun, 28 Apr 2019 17:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=t8dTWIW7NLgu1vbRlD4JJO31sN4GWX5MsElo4ehQ6IQ=;
 b=Q1BcO3gFAZAkpqWZaytcwz0o9k+JhrGB1/gfr53NXhPOqOJDJOcd399rftuUBM00TE
 mEAFnmYbCNF4eNdKph8L4LbLlFyC0TOPdNDfCmIe0YMvih9cJFHN5A1ETWDTECviO7ba
 /5GjJ1F5fbQYCtGTcgyWDVHMXj2pXYfgkcX7yBiQ7HlNIY3r+/+L/NFnt1gnCn8kMdoU
 gW4BZb7tRxQGiHtlH6lxC05+T2kZfIn2t4dph5GDogGjWfC/2sFQqfhfLtRfp8LBr7nQ
 KfWu0yJaJ/gzCB5zTrpYyNB1J+N5JzPzWxBjIaOfOvqaWVJo4x3qzSEmjD3MjtH0XSkp
 W8vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=t8dTWIW7NLgu1vbRlD4JJO31sN4GWX5MsElo4ehQ6IQ=;
 b=Ftw6Ki6FqyksscQFYirhHiz8WQmx0eTPpEg0Jc4PqGmVVBHUavEv6KT1I3HS449UdK
 0eO7XEnCLbuaeFXGkckPDfEgTR69YIqXN5rbm5PF95NZrddzQt+AKML2x7iElkn80RtA
 vudgF4FYJLi7wT9ZTzyTHMTguYbuuy9Ls7jJufoP0cqMbceUcvS7tKkZd3RK3/8GIKSe
 f/7x1HeuWz0qp6caNtklEUV2mepmP2D8I/ZQpzr3B2i+obkud8NzS+BrbHPzP9b8O6XT
 OJEAFO91Ed5gB/zBtbnc/HftuHt6Bw36irnfus7j4cxUrTCu+TuulkTADv+6LpnaWjgD
 BMEQ==
X-Gm-Message-State: APjAAAXltAu1BmZSCGRcEuUTXOtmCE6aNioeJn9C9mZf2b5ipfrOh6eG
 2OUA8T/IMCEajLCgYyZTy2pdgSkwCV6BQMhhG1U=
X-Google-Smtp-Source: APXvYqwMfJNh503sAKxSEhJwoFfSbkT5WHVkot2cmWnAsr7CBV4B2luKwcqc0dzC6XqAT9h0pllnYzMDmb6jIYaYFho=
X-Received: by 2002:a67:f052:: with SMTP id q18mr3561435vsm.8.1556496006105;
 Sun, 28 Apr 2019 17:00:06 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 28 Apr 2019 20:00:00 -0400
Message-ID: <CADRnH23yQxEPTYysMECCwvgYvN7RZucmDH+x4QLPDJZcJUR4og@mail.gmail.com>
To: discuss-gnuradio@gnu.org, 
 "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] Introducing Theseus Cores: Open source FPGA cores for
 DSP and SDR
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: EJ Kreinar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: EJ Kreinar <ejkreinar@gmail.com>
Content-Type: multipart/mixed; boundary="===============1899342152185943244=="
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

--===============1899342152185943244==
Content-Type: multipart/alternative; boundary="00000000000089d3ce05879ff797"

--00000000000089d3ce05879ff797
Content-Type: text/plain; charset="UTF-8"

Hi all,

I'm very happy to announce the (very modest) release of the Theseus Cores
project: https://gitlab.com/theseus-cores/theseus-cores

Theseus Cores is designed to provide open source FPGA cores for digital
signal processing and software defined radio, plus the means to *use* the
FPGA cores in real life.... In practice, that mostly means FPGA code
propagates up through RFNoC blocks which have both UHD and Gnuradio
software hooks for users to attach to. In the future it would be great to
support other FPGA platforms if there's interest too.

So far, Theseus Cores provides the following RFNoC FPGA blocks and
corresponding software:
- *Polyphase M/2 Channelizer*: A polyphase channelizer where each channel
outputs 2x sample rate and is compatible with perfect-reconstruction.
Thanks to Phil Vallance for re-implementing the channelizer described in
his GRCon 2017 presentation-- it works!
- *"1-to-N" DDC Chain*: Parameterized instantiations of "N" independent
DDCs, where each DDC is connected to the *first* input (a very basic, brute
force channelizer). Note I've seen several mailing list discussions in the
past year about 1-to-4 or 1-to-8 DDC channelizers -- this block provides
the generalized version of that scenario.
- *DUC + DDC Rational Resampler*: A "hacked" rational resampler, consisting
of a DUC and a DDC back-to-back. It's not pretty, but it can occasionally
be helpful.

Furthermore, in an effort to TRY to create an open source FPGA project that
doesnt catastrophically break on a regular basis, we've set up continuous
integration tests for both software and FPGA. Dockerfiles are provided here
(https://gitlab.com/theseus-cores/theseus-docker). Theseus Cores also
pushes tagged docker images for various versions of UHD and Gnuradio, where
the branches for UHD-3.13, UHD-3.14, UHD's master, and gnuradio's maint-3.7
are rebuilt weekly. This may be of auxiliary use to people building UHD and
gnuradio in a CI scenario: https://hub.docker.com/u/theseuscores
<https://github.com/theseus-cores/theseus-cores>
*What's next??* It's a modest list of features so far, but I'm sure we can
all sympathize that things move slowly when developing FPGA code. Here's a
quick rundown of a few ideas on the horizon:
- Arbitrary resampling
- Channel downselection for the M/2 channelizer (currently all channels
must be output... it's far more useful to select a subset of channels to
return and just grab those)
- Channel reconsonstruction *after* the M/2 channelizer (maybe)
- OFDM receiver (maybe)

We need more ideas and contributors! Now that this thing exists, I would
LOVE to see Theseus Cores fill itself out with some of the more common DSP
utilities that really should be available as open-source... it would be
absolutely amazing to provide a library of components and applications for
FPGA developers in a similar way that gnuradio provides for the software
community. Please reach out with suggestions for relevant FPGA utilities or
applications you'd like to see -- or even better, if you have ideas or code
you're willing to share with the project! If you are interested in getting
involved in any way, I would be happy to hear from you.

Cheers,
EJ

--00000000000089d3ce05879ff797
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"ltr">Hi all,<br><div><br></div><div>I&#39;m v=
ery happy to announce the (very modest) release of the Theseus Cores projec=
t:=C2=A0<a href=3D"https://gitlab.com/theseus-cores/theseus-cores" rel=3D"n=
oreferrer noreferrer noreferrer noreferrer noreferrer noreferrer" target=3D=
"_blank">https://gitlab.com/theseus-cores/theseus-cores</a></div><div><br><=
/div><div>Theseus Cores is designed to provide open source FPGA cores for d=
igital signal processing and software defined radio, plus the means to *use=
* the FPGA cores in real life.... In practice, that mostly means FPGA code =
propagates up through RFNoC blocks which have both UHD and Gnuradio softwar=
e hooks for users to attach to. In the future it would be great to support =
other FPGA platforms if there&#39;s interest too.<br></div><div><br></div><=
div>So far, Theseus Cores provides the following RFNoC FPGA blocks and corr=
esponding software:</div>- <b>Polyphase=C2=A0M/2 Channelizer</b>: A polypha=
se channelizer where each channel outputs 2x sample rate and is compatible =
with perfect-reconstruction. Thanks to Phil Vallance for re-implementing th=
e channelizer described in his GRCon 2017 presentation-- it works!<div>- <b=
>&quot;1-to-N&quot; DDC Chain</b>: Parameterized instantiations of &quot;N&=
quot; independent DDCs, where each DDC is connected to the *first* input (a=
 very basic, brute force channelizer). Note I&#39;ve seen several mailing l=
ist discussions in the past year about 1-to-4 or 1-to-8 DDC channelizers --=
 this block provides the generalized version of that scenario.</div><div>- =
<b>DUC + DDC Rational Resampler</b>: A &quot;hacked&quot; rational resample=
r, consisting of a DUC and a DDC back-to-back. It&#39;s not pretty, but it =
can occasionally be helpful.</div><div><br></div><div>Furthermore, in an ef=
fort to TRY to create an open source FPGA project that doesnt catastrophica=
lly break on a regular basis, we&#39;ve set up continuous integration tests=
 for both software and FPGA. Dockerfiles are provided here (<a href=3D"http=
s://gitlab.com/theseus-cores/theseus-docker" rel=3D"noreferrer noreferrer n=
oreferrer noreferrer noreferrer noreferrer" target=3D"_blank">https://gitla=
b.com/theseus-cores/theseus-docker</a>).=C2=A0Theseus Cores also pushes tag=
ged docker images for various versions of UHD and Gnuradio, where the branc=
hes for UHD-3.13, UHD-3.14, UHD&#39;s master, and gnuradio&#39;s maint-3.7 =
are rebuilt weekly. This may be of auxiliary use to people building UHD and=
 gnuradio in a CI scenario:=C2=A0<a href=3D"https://hub.docker.com/u/theseu=
scores" rel=3D"noreferrer noreferrer noreferrer noreferrer noreferrer noref=
errer" target=3D"_blank">https://hub.docker.com/u/theseuscores</a></div><di=
v><a href=3D"https://github.com/theseus-cores/theseus-cores" rel=3D"norefer=
rer noreferrer noreferrer noreferrer noreferrer noreferrer" target=3D"_blan=
k"></a><br></div><div><b>What&#39;s next??</b>=C2=A0It&#39;s a modest list =
of features so far, but I&#39;m sure we can all sympathize that things move=
 slowly when developing FPGA code. Here&#39;s a quick rundown of a few idea=
s on the horizon:<br>- Arbitrary resampling</div><div>- Channel downselecti=
on for the M/2 channelizer (currently all channels must be output... it&#39=
;s far more useful to select a subset of channels to return and just grab t=
hose)</div><div>- Channel reconsonstruction *after* the M/2 channelizer (ma=
ybe)</div><div>- OFDM receiver (maybe)</div><div><br></div><div>We need mor=
e ideas and contributors! Now that this thing exists, I would LOVE to see T=
heseus Cores fill itself out with some of the more common DSP utilities tha=
t really should be available as open-source... it would be absolutely amazi=
ng to provide a library of components and applications for FPGA developers =
in a similar way that gnuradio provides for the software community. Please =
reach out with=C2=A0suggestions for relevant FPGA utilities or applications=
 you&#39;d like to see -- or even better, if you have ideas or code you&#39=
;re willing to share with the project! If you are interested in getting inv=
olved in any way, I would be happy to hear from you.</div><div><br></div><d=
iv>Cheers,</div><div>EJ</div></div></div>

--00000000000089d3ce05879ff797--


--===============1899342152185943244==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1899342152185943244==--

