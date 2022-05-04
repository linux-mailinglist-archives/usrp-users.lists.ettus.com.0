Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1003351AE13
	for <lists+usrp-users@lfdr.de>; Wed,  4 May 2022 21:39:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 10BF3384A51
	for <lists+usrp-users@lfdr.de>; Wed,  4 May 2022 15:39:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651693186; bh=iM3eN78T9ZTeYG/VRCJpaNjlXJLRLyRu6EKA8pzlVRk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ICb6gxHpLBSRk1xpJa4OjUufei1TzCbgurMAX0gaSsDx2tq9AfS2sWhH6NncWeGFE
	 cVkUX51nZ1RxhqQcm1w+D09vra1YVbIBVXQS5QcI6K5e1tI+P4HvFLQPgZiumzOz9Q
	 G9qZfVfaPwkY0rnUovuYEOx+DRQDbkSl5NhuDW+tbOf1ajQedd/N4I+q11+279nSqz
	 pS7er0TULY6uFqnedzE4+JBMBuucQe/gdJAt7DPUi7Ocmr0crUWcuOUMtNpHmUHRCV
	 1ZkZbIzwTyKihNUZCfazooRc6L75oDJ5NRIqEow/DNnmEvkKWUxlOfGHr4ZUz44aoG
	 qwh5pWozjw+BQ==
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 947F5384A22
	for <usrp-users@lists.ettus.com>; Wed,  4 May 2022 15:38:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="b1WNG+Er";
	dkim-atps=neutral
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-2f7c57ee6feso27276837b3.2
        for <usrp-users@lists.ettus.com>; Wed, 04 May 2022 12:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=E5rlMxFNyGxyaGzpm/XblEa2yqeZsJbbJRaq78wOnW0=;
        b=b1WNG+ErNihb8vMsK7u93CJNDy1myP0rFPAk28Fvr5KGZMXxJUBBFYDuWVTqlzQLAe
         ZjiKZ/L6+9Fd40w4fJHXHu8f+JtIHD//puKaICGYpeTObaA1wGbw0G7/e9789Cog8FDr
         SavHLTPjiqkJbQSXYZ+g2/spuDgsNLDdA3Tf7wSUG7/pVQEmJVmHGQQHg+wpr71XMbAK
         bMqDAQo2n1xxmbZxbzIL9uFdw8tgT/d05v/55S95GM3jOzlX9GI4cWosSrTQTTHd40h/
         7keUmHjdB9IkQChJnmz4f1KHigJVgnDYk2l92NQaETBjMIOxGEHcK0c32+rF4nBjhwcn
         Fkrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=E5rlMxFNyGxyaGzpm/XblEa2yqeZsJbbJRaq78wOnW0=;
        b=j67hHqKOFEtYdc5Itb5al8ECfAIdIUMXU7EyIUH5+KWrS9FOVVegGx0dKZTy3fzAlD
         2EOW6iHCEju0HGGMgolicQw0RVnzdRPwRed0CfygoMi/lqYwiZ8vewDPSqY1WHIme25i
         BDvOhq7m6BBm5/qc9UPYFyC/hJNMn+/vvpOTEAv1QNPkt0F3o4BwkOEvReOT8RczCYwp
         4JnnXnjsehCb6Qam8o3w5KsZRCJhWIIB7LWUNIKK4bVic7cdifqt24IG4YK2CzF/QrOz
         DYvQBfpbNAbUzTyi37rgbtz6/R/8oYAKr7+/Boh/2EdpkZcBG635yfJ2hXqsvOpBQLwg
         +03A==
X-Gm-Message-State: AOAM531/3pdoaUBVWnVXuSTIQwTYnaQP4/znpjziIAyfGjpClwOy1qQz
	EwKTet1URDI1XTQgk3ZPQ788di8lRtZC3uawc/PEgA==
X-Google-Smtp-Source: ABdhPJxcj4XqPg4Qs4jNaD5k1KcRgL/WGKJ94yCJVbVSpUPMSpPo+e6gaavVh07c+C8afVo5HIzo8gmSFI0UQojn/mg=
X-Received: by 2002:a81:1e86:0:b0:2eb:66b9:3a93 with SMTP id
 e128-20020a811e86000000b002eb66b93a93mr20000027ywe.411.1651693125629; Wed, 04
 May 2022 12:38:45 -0700 (PDT)
MIME-Version: 1.0
References: <35179a1b-c803-a381-2ea1-afc1a2a3e592@olifantasia.com>
 <3becaee4-64b1-8f21-f753-604afccacea9@gmail.com> <CAFche=hxr+f0mMCW3zFBfuPF5YgLXtsQZOG7vrQ6MRdGmMonaQ@mail.gmail.com>
In-Reply-To: <CAFche=hxr+f0mMCW3zFBfuPF5YgLXtsQZOG7vrQ6MRdGmMonaQ@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 4 May 2022 15:38:34 -0400
Message-ID: <CAB__hTTYo=h--G=ymoZu5DvmOzUGOe5YFhi92Q_FyyacTjnpRQ@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: LSARVQTCC4VPEYNJVOPR4UR5DNZK3JBR
X-Message-ID-Hash: LSARVQTCC4VPEYNJVOPR4UR5DNZK3JBR
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: data corruption problems with high speed dual channel capturing on USRP E320 over 10 gbit ethernet
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LSARVQTCC4VPEYNJVOPR4UR5DNZK3JBR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6191432754720155207=="

--===============6191432754720155207==
Content-Type: multipart/alternative; boundary="000000000000082c8405de34c69d"

--000000000000082c8405de34c69d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Wade,
I, too, thought that the E320 could run both channels at the higher rate.
My understanding was that the E320 implemented the RFIC LVDS mode rather
than the TTL mode (or something like that) such that the 2x30.72 limitation
of the B210/E310 was removed to allow 2x61.44.  Is the limitation due to
the RFIC itself or in the way in which Ettus is using it?
Rob

On Wed, May 4, 2022 at 2:24 PM Wade Fife <wade.fife@ettus.com> wrote:

> Hi Martin,
>
> I'm sorry for the confusion. The maximum rate for E320 is 61.44 Msps, so
> when you do dual channel, the maximum rate per channel is 30.72 Msps. You
> can do 61.44 Msps with a single channel. The fact that you don't see an
> error message when setting it too high is a known issue.
>
> Wade
>
> On Wed, May 4, 2022 at 8:54 AM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 2022-05-04 08:43, Martin wrote:
>> > Hi,
>> >
>> > I have data corruption problems with high speed dual channel capturing
>> > on USRP E320 over 10 gbit ethernet.
>> >
>> > Medium rate, dual channel,  everything seems fine.
>> > High speed, single channel, everything also seems fine.
>> > High speed, dual channel capturing. Problems. High amount of random
>> > high values in datastream even with low gain and low signal level)
>> >
>> > I do not seem to get U or O (Underrun, Overrun) errors
>> >
>> >
>> > I was under the impression that with E320 you should be able to
>> > capture dual channel 56 Msps signals. If that is not feasable then we
>> > have a serious problem.
>> > I also do not see any error messages.
>> > We tested on two different E320=C5=9B on two different host-PC's. Same
>> result.
>> >
>> >
>> > Do you also have these problems?
>> >
>> > Do you have tips on how to solve or check what the issue is?
>> >
>> > Thanks in advance.
>> >
>> > Please see below for details
>> >
>> >
>> > When captured with uhd_rx_cfile or our own capture scripts.
>> > The output data shows random very high, usualle even full scale values
>> > even if the input signal is small and gain low.
>> > With int 16 output values are between 32768 and -32767. With complex
>> > float from -1.0 to 1.0
>> >
>> > The capture is done from a host-pc using the E320 as remote capture
>> > device over 10 Gbit ethernet.
>> >
>> > The USRP E320 is running UHD 4.0.0.0
>> > root@ni-e320-321D09C:~# uhd_config_info --version
>> > UHD 4.0.0.0-0-g90ce6062
>> >
>> > The host pc is also running uhd_4.0.0.0:
>> > nldudok1@noisegate:~$ uhd_config_info --version
>> > UHD 4.0.0.0-133-g7ec04886
>> >
>> >
>> > dual channel high speed test with complex int16 (complex short)
>> > wrong values in both channels. Whatever the gain. values go from
>> > -32767 to 32768
>> > uhd_rx_cfile -a master_clock_rate=3D56e6 -c 0,1 -g 44.0 -r 56e6  -f
>> > 105.0e6 -N 56e6 -s tmp_cshort_56M_g44.raw
>> > uhd_rx_cfile -a master_clock_rate=3D56e6 -c 0,1 -g  0.0 -r 56e6  -f
>> > 105.0e6 -N 56e6 -s tmp_cshort_56M_g0.raw
>> >
>> > Same result with complex float32 output, values fo from -1.0 to +1.0
>> > whaterver the gain.
>> > uhd_rx_cfile -a master_clock_rate=3D56e6 -c 0,1 -g 44.0 -r 56e6  -f
>> > 105.0e6 -N 56e6 tmp_cfloat_56M_g44.raw
>> > uhd_rx_cfile -a master_clock_rate=3D56e6 -c 0,1 -g  0.0 -r 56e6  -f
>> > 105.0e6 -N 56e6 tmp_cfloat_56M_g0.raw
>> >
>> >
>> > Same test at medium datarate. Values are OK. complex float or complex
>> > short output. Note
>> > uhd_rx_cfile -a master_clock_rate=3D16e6 -c 0,1 -g 44.0 -r 16e6  -f
>> > 105.0e6 -N 16e6 -s tmp_cshort_16M.raw
>> > uhd_rx_cfile -a master_clock_rate=3D16e6 -c 0,1 -g 44.0 -r 16e6  -f
>> > 105.0e6 -N 16e6 tmp_cfloat_16M.raw
>> >
>> > Single channel test at high rate also seems OK with eather complex
>> > int16 or complex float32 output values.
>> > Note that with complex float output the same writespeed  to the ssd is
>> > needed as with dual channel and complex int16 output. So it does not
>> > seem to be a slow disk issue. Would also not be very likely since we
>> > are storing only 1 second of data which should fit in linux disk write
>> > buffer.
>> > uhd_rx_cfile -a master_clock_rate=3D56e6 -g 44.0 -r 56e6  -f 105.0e6 -=
N
>> > 56e6 -s tmp_cshort_56M_g44_single.raw
>> > uhd_rx_cfile -a master_clock_rate=3D56e6 -g 44.0 -r 56e6  -f 105.0e6 -=
N
>> > 56e6 tmp_cfloat_56M_g44_single.raw
>> >
>> >
>> > You can look at complex float output data with gr-plot_iq and
>> gr_plot_fft
>> > complex short data can be converted to complex float with our own
>> > little conversion script.
>> > cshort_to_cfloat.py -i inputfilename.raw -o outputfilename.raw
>> > (I can send the conversion script if you need it. It is just a file
>> > source, interleaved short to complex block and file sink)
>> >
>> >
>> > Example:
>> > uhd_rx_cfile -a master_clock_rate=3D56e6 -c 0,1 -g  0.0 -r 56e6  -f
>> > 105.0e6 -N 56e6 -s tmp_cshort_56M_g0.raw
>> > #first channel
>> > cshort_to_cfloat.py -i tmp_cshort_56M_g0.0.raw -o
>> > tmp_cshort_56M_g0_converted_to_cfloat.0.raw
>> > #second channel
>> > cshort_to_cfloat.py -i tmp_cshort_56M_g0.1.raw -o
>> > tmp_cshort_56M_g0_converted_to_cfloat.1.raw
>> >
>> > #show data
>> > gr-plot_iq -R 56e6 tmp_cshort_56M_g0_converted_to_cfloat.0.raw
>> > gr-plot_iq -R 56e6 tmp_cshort_56M_g0_converted_to_cfloat.1.raw
>> >
>> >
>> > Best regards,
>> >
>> > Martin Dudok van Heel
>> > _______________________________________________
>> >
>> Martin:
>>
>> I've forwarded your note to Ettus R&D.
>>
>> But in the meantime, are you running the latest UHD?
>>
>> What happens if you reduce the sample rate "a little" -- like down to
>> 52Msps?
>>
>> I know that on other platforms that use the AD9361 (as the E320 does)
>> that the maximum supported rate for dual-channel is 32Msps, but that may
>> just be because of the
>>    type of clocking+data interface used on those platforms--the AD9361
>> supports a couple of different interface regimes...
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000082c8405de34c69d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Wade,<div>I, too, thought that the E320 could run both =
channels at the higher rate.=C2=A0 My understanding was that the E320 imple=
mented the RFIC LVDS mode rather than the TTL mode (or something like that)=
 such that the 2x30.72 limitation of the B210/E310 was removed to allow 2x6=
1.44.=C2=A0 Is the limitation due to the RFIC itself or in the way in which=
 Ettus is using it?</div><div>Rob</div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 4, 2022 at 2:24 PM Wade =
Fife &lt;<a href=3D"mailto:wade.fife@ettus.com">wade.fife@ettus.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div>Hi Martin,</div><div><br></div><div>I&#39;m sorry for the con=
fusion. The maximum rate for E320 is 61.44 Msps, so when you do dual channe=
l, the maximum rate per channel is 30.72 Msps. You can do 61.44 Msps with a=
 single channel. The fact that you don&#39;t see an error message when sett=
ing it too high is a known issue.</div><div><br></div><div>Wade<br></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Wed, May 4, 2022 at 8:54 AM Marcus D. Leech &lt;<a href=3D"mailto:patchvon=
braun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 2022-05-04 08:=
43, Martin wrote:<br>
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
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000082c8405de34c69d--

--===============6191432754720155207==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6191432754720155207==--
