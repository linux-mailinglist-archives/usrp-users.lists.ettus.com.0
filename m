Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FB251ACB1
	for <lists+usrp-users@lfdr.de>; Wed,  4 May 2022 20:24:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 461CE385450
	for <lists+usrp-users@lfdr.de>; Wed,  4 May 2022 14:24:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651688685; bh=b039enEWL1Y4Fi12Sj0kO/AccYNKy+QH/QkM41Jgvbk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=w0qzWn0+/w80w0kqbuTSqSTGn/fYGXV/Ovs+YAGCTfVR6Z2aVoPOp/q/DMX4iNSPl
	 xeAKlA4YpBgEQ+XmtipGVopdIutLeMmS0h8h+fsb8vfv5t9ULNO/KmLDoUEGdyTwVi
	 P9s+rHRVFmoTBF7nIG7Z9q/r5LWd4zst0qnsqA9EVrfnQdAkL85MqU7aLuw0Fn72tq
	 oOFvB32iFR6nmhPC04NaROPOCTD4w7OH6+FO7bPnIZm1PHAHJzhQmMUFpv6m/uPPiB
	 HRXHsso0VVqj9iQ+MrX8ft2O+nfkd7RDhj07HqA8Vw0tABsZdiI4HoKVt0Hz4q9PFW
	 4/vMMiUTUFpLQ==
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	by mm2.emwd.com (Postfix) with ESMTPS id E548838523C
	for <usrp-users@lists.ettus.com>; Wed,  4 May 2022 14:23:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="uL+ggMoS";
	dkim-atps=neutral
Received: by mail-yb1-f169.google.com with SMTP id y2so3818074ybi.7
        for <usrp-users@lists.ettus.com>; Wed, 04 May 2022 11:23:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ps71iSnboIv/0UGzxeCN8zQVg3mlUgFNcZ2qXqj1fp8=;
        b=uL+ggMoS/VMq+Fate7R3jBHoDAoOoRSiXe4DDoyljb++i/Ux7HhcXi5V/vzpwV7zRa
         sv1sgwfOzYv6L9tM2BgO01ORFPkzIntxzrrJ3YXMDsQR4UbEv8YXp/PWBz+YQpD7VNXm
         c8Nql/7hesEI2OpTilMWTj+/ul/CNepjEmk9iIqAsa85KRSLLKHpkKOS2JI0lfqYjThS
         pW8qXAf8xgopQXREQuhLiEk54F3xULMDnnN/r1SsdtPdlPPfMODD+jox0qmfVABtw7fZ
         1K8RCL8tm5gouHVC32IHwLWSaRXMO3jUPAutgTAErVfUiPKGisDOtcROYBxwzGYv4Rvy
         DBgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ps71iSnboIv/0UGzxeCN8zQVg3mlUgFNcZ2qXqj1fp8=;
        b=hIrYrLBxvn8XuCRqQbyVm244w26xR2oeTNMftuXSVqUveI409qAGD/TR4jcxwc6B6f
         /rbPPvutn5qbHtW5ATJD1JXSRB4e6+5NyHg1/rkjeP5bLpFtbMfJ2tHeJ133TroesfWW
         EB5wBokDgx+4RU9ULjI+PXAVGOyUHpp6ZgkytmA2c414xHyLJXq/HHf+ezsEDhS8Pp8D
         iTTfZc8tztN7EHVWXiCJOMWyMd4o56DZfL1htKiHhwffuOMCTvDOeF1Hf973xqy+HNxL
         rkur+DDe+YosAvJq4BZeVMwNKhQC54naUscU5SNAQBnQBBnXeOUloCOgNgTJZ7uME0k8
         O3eg==
X-Gm-Message-State: AOAM533JYEcvWyW7k4p985foBhVM2xQDfuyRuYJ6fipiLOLY4hqo8MvS
	JxIIrEayR8qzh4KnV15Mu6CNpFCZjR+IMAaRTGKdiQgsVODrecOf
X-Google-Smtp-Source: ABdhPJzmv2umpvEqSqCKWEGM+6j7QxMUGTcrpbk8X8xaMSVg5ZUsHQS7G3RtvZmKcKxhzX3apj4UD+NRKuuF1XVJG5c=
X-Received: by 2002:a25:244b:0:b0:649:6901:e586 with SMTP id
 k72-20020a25244b000000b006496901e586mr13103049ybk.429.1651688621218; Wed, 04
 May 2022 11:23:41 -0700 (PDT)
MIME-Version: 1.0
References: <35179a1b-c803-a381-2ea1-afc1a2a3e592@olifantasia.com> <3becaee4-64b1-8f21-f753-604afccacea9@gmail.com>
In-Reply-To: <3becaee4-64b1-8f21-f753-604afccacea9@gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 4 May 2022 13:23:24 -0500
Message-ID: <CAFche=hxr+f0mMCW3zFBfuPF5YgLXtsQZOG7vrQ6MRdGmMonaQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: L7NIRJWFBTZD45SJ526TCHSSRSL2TOAT
X-Message-ID-Hash: L7NIRJWFBTZD45SJ526TCHSSRSL2TOAT
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: data corruption problems with high speed dual channel capturing on USRP E320 over 10 gbit ethernet
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L7NIRJWFBTZD45SJ526TCHSSRSL2TOAT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3557764173198206204=="

--===============3557764173198206204==
Content-Type: multipart/alternative; boundary="0000000000008c3a3e05de33b925"

--0000000000008c3a3e05de33b925
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Martin,

I'm sorry for the confusion. The maximum rate for E320 is 61.44 Msps, so
when you do dual channel, the maximum rate per channel is 30.72 Msps. You
can do 61.44 Msps with a single channel. The fact that you don't see an
error message when setting it too high is a known issue.

Wade

On Wed, May 4, 2022 at 8:54 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-05-04 08:43, Martin wrote:
> > Hi,
> >
> > I have data corruption problems with high speed dual channel capturing
> > on USRP E320 over 10 gbit ethernet.
> >
> > Medium rate, dual channel,  everything seems fine.
> > High speed, single channel, everything also seems fine.
> > High speed, dual channel capturing. Problems. High amount of random
> > high values in datastream even with low gain and low signal level)
> >
> > I do not seem to get U or O (Underrun, Overrun) errors
> >
> >
> > I was under the impression that with E320 you should be able to
> > capture dual channel 56 Msps signals. If that is not feasable then we
> > have a serious problem.
> > I also do not see any error messages.
> > We tested on two different E320=C5=9B on two different host-PC's. Same =
result.
> >
> >
> > Do you also have these problems?
> >
> > Do you have tips on how to solve or check what the issue is?
> >
> > Thanks in advance.
> >
> > Please see below for details
> >
> >
> > When captured with uhd_rx_cfile or our own capture scripts.
> > The output data shows random very high, usualle even full scale values
> > even if the input signal is small and gain low.
> > With int 16 output values are between 32768 and -32767. With complex
> > float from -1.0 to 1.0
> >
> > The capture is done from a host-pc using the E320 as remote capture
> > device over 10 Gbit ethernet.
> >
> > The USRP E320 is running UHD 4.0.0.0
> > root@ni-e320-321D09C:~# uhd_config_info --version
> > UHD 4.0.0.0-0-g90ce6062
> >
> > The host pc is also running uhd_4.0.0.0:
> > nldudok1@noisegate:~$ uhd_config_info --version
> > UHD 4.0.0.0-133-g7ec04886
> >
> >
> > dual channel high speed test with complex int16 (complex short)
> > wrong values in both channels. Whatever the gain. values go from
> > -32767 to 32768
> > uhd_rx_cfile -a master_clock_rate=3D56e6 -c 0,1 -g 44.0 -r 56e6  -f
> > 105.0e6 -N 56e6 -s tmp_cshort_56M_g44.raw
> > uhd_rx_cfile -a master_clock_rate=3D56e6 -c 0,1 -g  0.0 -r 56e6  -f
> > 105.0e6 -N 56e6 -s tmp_cshort_56M_g0.raw
> >
> > Same result with complex float32 output, values fo from -1.0 to +1.0
> > whaterver the gain.
> > uhd_rx_cfile -a master_clock_rate=3D56e6 -c 0,1 -g 44.0 -r 56e6  -f
> > 105.0e6 -N 56e6 tmp_cfloat_56M_g44.raw
> > uhd_rx_cfile -a master_clock_rate=3D56e6 -c 0,1 -g  0.0 -r 56e6  -f
> > 105.0e6 -N 56e6 tmp_cfloat_56M_g0.raw
> >
> >
> > Same test at medium datarate. Values are OK. complex float or complex
> > short output. Note
> > uhd_rx_cfile -a master_clock_rate=3D16e6 -c 0,1 -g 44.0 -r 16e6  -f
> > 105.0e6 -N 16e6 -s tmp_cshort_16M.raw
> > uhd_rx_cfile -a master_clock_rate=3D16e6 -c 0,1 -g 44.0 -r 16e6  -f
> > 105.0e6 -N 16e6 tmp_cfloat_16M.raw
> >
> > Single channel test at high rate also seems OK with eather complex
> > int16 or complex float32 output values.
> > Note that with complex float output the same writespeed  to the ssd is
> > needed as with dual channel and complex int16 output. So it does not
> > seem to be a slow disk issue. Would also not be very likely since we
> > are storing only 1 second of data which should fit in linux disk write
> > buffer.
> > uhd_rx_cfile -a master_clock_rate=3D56e6 -g 44.0 -r 56e6  -f 105.0e6 -N
> > 56e6 -s tmp_cshort_56M_g44_single.raw
> > uhd_rx_cfile -a master_clock_rate=3D56e6 -g 44.0 -r 56e6  -f 105.0e6 -N
> > 56e6 tmp_cfloat_56M_g44_single.raw
> >
> >
> > You can look at complex float output data with gr-plot_iq and gr_plot_f=
ft
> > complex short data can be converted to complex float with our own
> > little conversion script.
> > cshort_to_cfloat.py -i inputfilename.raw -o outputfilename.raw
> > (I can send the conversion script if you need it. It is just a file
> > source, interleaved short to complex block and file sink)
> >
> >
> > Example:
> > uhd_rx_cfile -a master_clock_rate=3D56e6 -c 0,1 -g  0.0 -r 56e6  -f
> > 105.0e6 -N 56e6 -s tmp_cshort_56M_g0.raw
> > #first channel
> > cshort_to_cfloat.py -i tmp_cshort_56M_g0.0.raw -o
> > tmp_cshort_56M_g0_converted_to_cfloat.0.raw
> > #second channel
> > cshort_to_cfloat.py -i tmp_cshort_56M_g0.1.raw -o
> > tmp_cshort_56M_g0_converted_to_cfloat.1.raw
> >
> > #show data
> > gr-plot_iq -R 56e6 tmp_cshort_56M_g0_converted_to_cfloat.0.raw
> > gr-plot_iq -R 56e6 tmp_cshort_56M_g0_converted_to_cfloat.1.raw
> >
> >
> > Best regards,
> >
> > Martin Dudok van Heel
> > _______________________________________________
> >
> Martin:
>
> I've forwarded your note to Ettus R&D.
>
> But in the meantime, are you running the latest UHD?
>
> What happens if you reduce the sample rate "a little" -- like down to
> 52Msps?
>
> I know that on other platforms that use the AD9361 (as the E320 does)
> that the maximum supported rate for dual-channel is 32Msps, but that may
> just be because of the
>    type of clocking+data interface used on those platforms--the AD9361
> supports a couple of different interface regimes...
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000008c3a3e05de33b925
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Martin,</div><div><br></div><div>I&#39;m sorry for=
 the confusion. The maximum rate for E320 is 61.44 Msps, so when you do dua=
l channel, the maximum rate per channel is 30.72 Msps. You can do 61.44 Msp=
s with a single channel. The fact that you don&#39;t see an error message w=
hen setting it too high is a known issue.</div><div><br></div><div>Wade<br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Wed, May 4, 2022 at 8:54 AM Marcus D. Leech &lt;<a href=3D"mailto:=
patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">On 2022-05-04 08:43, Martin=
 wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I have data corruption problems with high speed dual channel capturing=
 <br>
&gt; on USRP E320 over 10 gbit ethernet.<br>
&gt;<br>
&gt; Medium rate, dual channel,=C2=A0 everything seems fine.<br>
&gt; High speed, single channel, everything also seems fine.<br>
&gt; High speed, dual channel capturing. Problems. High amount of random <b=
r>
&gt; high values in datastream even with low gain and low signal level)<br>
&gt;<br>
&gt; I do not seem to get U or O (Underrun, Overrun) errors<br>
&gt;<br>
&gt;<br>
&gt; I was under the impression that with E320 you should be able to <br>
&gt; capture dual channel 56 Msps signals. If that is not feasable then we =
<br>
&gt; have a serious problem.<br>
&gt; I also do not see any error messages.<br>
&gt; We tested on two different E320=C5=9B on two different host-PC&#39;s. =
Same result.<br>
&gt;<br>
&gt;<br>
&gt; Do you also have these problems?<br>
&gt;<br>
&gt; Do you have tips on how to solve or check what the issue is?<br>
&gt;<br>
&gt; Thanks in advance.<br>
&gt;<br>
&gt; Please see below for details<br>
&gt;<br>
&gt;<br>
&gt; When captured with uhd_rx_cfile or our own capture scripts.<br>
&gt; The output data shows random very high, usualle even full scale values=
 <br>
&gt; even if the input signal is small and gain low.<br>
&gt; With int 16 output values are between 32768 and -32767. With complex <=
br>
&gt; float from -1.0 to 1.0<br>
&gt;<br>
&gt; The capture is done from a host-pc using the E320 as remote capture <b=
r>
&gt; device over 10 Gbit ethernet.<br>
&gt;<br>
&gt; The USRP E320 is running UHD 4.0.0.0<br>
&gt; root@ni-e320-321D09C:~# uhd_config_info --version<br>
&gt; UHD 4.0.0.0-0-g90ce6062<br>
&gt;<br>
&gt; The host pc is also running uhd_4.0.0.0:<br>
&gt; nldudok1@noisegate:~$ uhd_config_info --version<br>
&gt; UHD 4.0.0.0-133-g7ec04886<br>
&gt;<br>
&gt;<br>
&gt; dual channel high speed test with complex int16 (complex short)<br>
&gt; wrong values in both channels. Whatever the gain. values go from <br>
&gt; -32767 to 32768<br>
&gt; uhd_rx_cfile -a master_clock_rate=3D56e6 -c 0,1 -g 44.0 -r 56e6=C2=A0 =
-f <br>
&gt; 105.0e6 -N 56e6 -s tmp_cshort_56M_g44.raw<br>
&gt; uhd_rx_cfile -a master_clock_rate=3D56e6 -c 0,1 -g=C2=A0 0.0 -r 56e6=
=C2=A0 -f <br>
&gt; 105.0e6 -N 56e6 -s tmp_cshort_56M_g0.raw<br>
&gt;<br>
&gt; Same result with complex float32 output, values fo from -1.0 to +1.0 <=
br>
&gt; whaterver the gain.<br>
&gt; uhd_rx_cfile -a master_clock_rate=3D56e6 -c 0,1 -g 44.0 -r 56e6=C2=A0 =
-f <br>
&gt; 105.0e6 -N 56e6 tmp_cfloat_56M_g44.raw<br>
&gt; uhd_rx_cfile -a master_clock_rate=3D56e6 -c 0,1 -g=C2=A0 0.0 -r 56e6=
=C2=A0 -f <br>
&gt; 105.0e6 -N 56e6 tmp_cfloat_56M_g0.raw<br>
&gt;<br>
&gt;<br>
&gt; Same test at medium datarate. Values are OK. complex float or complex =
<br>
&gt; short output. Note<br>
&gt; uhd_rx_cfile -a master_clock_rate=3D16e6 -c 0,1 -g 44.0 -r 16e6=C2=A0 =
-f <br>
&gt; 105.0e6 -N 16e6 -s tmp_cshort_16M.raw<br>
&gt; uhd_rx_cfile -a master_clock_rate=3D16e6 -c 0,1 -g 44.0 -r 16e6=C2=A0 =
-f <br>
&gt; 105.0e6 -N 16e6 tmp_cfloat_16M.raw<br>
&gt;<br>
&gt; Single channel test at high rate also seems OK with eather complex <br=
>
&gt; int16 or complex float32 output values.<br>
&gt; Note that with complex float output the same writespeed=C2=A0 to the s=
sd is <br>
&gt; needed as with dual channel and complex int16 output. So it does not <=
br>
&gt; seem to be a slow disk issue. Would also not be very likely since we <=
br>
&gt; are storing only 1 second of data which should fit in linux disk write=
 <br>
&gt; buffer.<br>
&gt; uhd_rx_cfile -a master_clock_rate=3D56e6 -g 44.0 -r 56e6=C2=A0 -f 105.=
0e6 -N <br>
&gt; 56e6 -s tmp_cshort_56M_g44_single.raw<br>
&gt; uhd_rx_cfile -a master_clock_rate=3D56e6 -g 44.0 -r 56e6=C2=A0 -f 105.=
0e6 -N <br>
&gt; 56e6 tmp_cfloat_56M_g44_single.raw<br>
&gt;<br>
&gt;<br>
&gt; You can look at complex float output data with gr-plot_iq and gr_plot_=
fft<br>
&gt; complex short data can be converted to complex float with our own <br>
&gt; little conversion script.<br>
&gt; cshort_to_cfloat.py -i inputfilename.raw -o outputfilename.raw<br>
&gt; (I can send the conversion script if you need it. It is just a file <b=
r>
&gt; source, interleaved short to complex block and file sink)<br>
&gt;<br>
&gt;<br>
&gt; Example:<br>
&gt; uhd_rx_cfile -a master_clock_rate=3D56e6 -c 0,1 -g=C2=A0 0.0 -r 56e6=
=C2=A0 -f <br>
&gt; 105.0e6 -N 56e6 -s tmp_cshort_56M_g0.raw<br>
&gt; #first channel<br>
&gt; cshort_to_cfloat.py -i tmp_cshort_56M_g0.0.raw -o <br>
&gt; tmp_cshort_56M_g0_converted_to_cfloat.0.raw<br>
&gt; #second channel<br>
&gt; cshort_to_cfloat.py -i tmp_cshort_56M_g0.1.raw -o <br>
&gt; tmp_cshort_56M_g0_converted_to_cfloat.1.raw<br>
&gt;<br>
&gt; #show data<br>
&gt; gr-plot_iq -R 56e6 tmp_cshort_56M_g0_converted_to_cfloat.0.raw<br>
&gt; gr-plot_iq -R 56e6 tmp_cshort_56M_g0_converted_to_cfloat.1.raw<br>
&gt;<br>
&gt;<br>
&gt; Best regards,<br>
&gt;<br>
&gt; Martin Dudok van Heel<br>
&gt; _______________________________________________<br>
&gt;<br>
Martin:<br>
<br>
I&#39;ve forwarded your note to Ettus R&amp;D.<br>
<br>
But in the meantime, are you running the latest UHD?<br>
<br>
What happens if you reduce the sample rate &quot;a little&quot; -- like dow=
n to <br>
52Msps?<br>
<br>
I know that on other platforms that use the AD9361 (as the E320 does) <br>
that the maximum supported rate for dual-channel is 32Msps, but that may <b=
r>
just be because of the<br>
=C2=A0=C2=A0 type of clocking+data interface used on those platforms--the A=
D9361 <br>
supports a couple of different interface regimes...<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000008c3a3e05de33b925--

--===============3557764173198206204==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3557764173198206204==--
