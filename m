Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4933B4A52A9
	for <lists+usrp-users@lfdr.de>; Mon, 31 Jan 2022 23:53:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2B162384927
	for <lists+usrp-users@lfdr.de>; Mon, 31 Jan 2022 17:53:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="3d7SQjR2";
	dkim-atps=neutral
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 09D7D38492A
	for <usrp-users@lists.ettus.com>; Mon, 31 Jan 2022 17:52:57 -0500 (EST)
Received: by mail-yb1-f180.google.com with SMTP id i62so45212994ybg.5
        for <usrp-users@lists.ettus.com>; Mon, 31 Jan 2022 14:52:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=eCahW2CqWcdZhuV110KR7o5vi7naU1KsgjFZJ1SyMyA=;
        b=3d7SQjR2QK38C2SVm65yn2ifvi0C5odWb1xGEX/xKohKlbVnQiJyYMdnyEjmVaXnum
         JbYNCWpivPq39jxBWhy9nHGoWsrbVJssicsVdRfBuDg3C9IXhHT9MXD5MncnelOKL3+B
         ZvuZ0rKuphSM7DvF6g9pvb3ndLtTi9KFfRU2/5T4Dj5ZW87fzG4JOto6pL4uwREwXiQR
         sB9mPeOuAPLtOV1gXMmEG7GY2ZKG/m7T4Ji5DQWE7Z7Vqg9SOqn13hGzatMQvhs88BFc
         9WyVRDx39QMwOLzgy+Le5IqGuN099JQfJoe0nfk4o4Vfp4hquCZ35qP1dWA/9U60FMBa
         FSpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eCahW2CqWcdZhuV110KR7o5vi7naU1KsgjFZJ1SyMyA=;
        b=Ti9z5eP/oEKLERwCA4R1tdBJubHf8v7r1ClsJ5+VQsO/yWUIqa4EZLP4KiOyUjgC0/
         xyU03kvi68QPXghQm8npmUgpHnQKXh8vTjory/RDvg+HCZTgfha082ealbm1D7cjRVi9
         sDskw0FwkwqxGCiA72pNoYPKqMo5SnO3C5VUpcPFEVkwTl3Bn6ASfv+hAfsuLw5pVuWz
         PUpodXrJbzGXBr6wylpD3SaZMbiQ6QoWibIEMq7a35qMG1eWfFnmQd2xkJ3IZYV2AfoM
         gh2GO5PzHdSkZzKlpaCgn9yPRyt3VUWxzSBM/CQs8IzrC8yJdrrqDXzgVXNG9+0acbKa
         gq9Q==
X-Gm-Message-State: AOAM533TW9atO+U4C1Fh4y1KZMiOWAWsfL2hy9Doqkg3X2ozQiQdCN0U
	Llp8Geg/wc1J016I3EGzSUktIRxcjLkfJGvd/LUWKMug
X-Google-Smtp-Source: ABdhPJwyHFMaAq9ZxwCLBESGB7WL73I3JdLthjh3G/3a6YnFYOUx0O37SVjSUapgpDpchOieWueNLow6b8K3kmVKIL4=
X-Received: by 2002:a25:3205:: with SMTP id y5mr33733759yby.766.1643669577133;
 Mon, 31 Jan 2022 14:52:57 -0800 (PST)
MIME-Version: 1.0
References: <CACDReSxXHfLjdsfBj9=oFXhOy5c-CTHY7+NaqRrCy6KpsVZtXw@mail.gmail.com>
In-Reply-To: <CACDReSxXHfLjdsfBj9=oFXhOy5c-CTHY7+NaqRrCy6KpsVZtXw@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 31 Jan 2022 16:52:41 -0600
Message-ID: <CAFche=jC+JZcZ4AEn=pU_qMjFu-Po8jWG9PPeovwLvG3-KwXug@mail.gmail.com>
To: Ofer Saferman <ofer@navigicom.com>
Message-ID-Hash: AIYPDDQGQY6ZG4WOPUVKIEZMKXNHTA52
X-Message-ID-Hash: AIYPDDQGQY6ZG4WOPUVKIEZMKXNHTA52
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Questions about replay block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AIYPDDQGQY6ZG4WOPUVKIEZMKXNHTA52/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2754704107817428625=="

--===============2754704107817428625==
Content-Type: multipart/alternative; boundary="0000000000004600ee05d6e8a570"

--0000000000004600ee05d6e8a570
Content-Type: text/plain; charset="UTF-8"

Hi Ofer,

1. It is bidirectional. You can think of the "record" and the "play"
components as independent, but connected to the same memory. So be careful
not to read/write to the same memory space and be aware that reading and
writing simultaneously slows down the DRAM making under/overflow more
likely. But I think the E320 DRAM should be fast enough for your use case.

2. The number of ports on the Replay block doesn't have any restrictions
that I know of. Any positive integer should be fine. You could also leave
ports unused/unconnected if it was somehow a problem.

3. To record at a predetermined time for a fixed amount of data, you should
be able to issue a stream command with the time and the number of samples
you want.
a. Yes.
b. Yes. The first time you want to record data, you call record(). To
record to the same buffer again, call record_restart(). Make sure num_samps
for your stream command does not exceed the size of your record buffer, or
else the radio will overflow.
c. Yes, you need to play back the buffer. Since the output is connected to
the rx streamer, it'll stream to the host. So you can call recv() on your
rx streamer to capture the data. Something like this (in Python):
replay.play(0, num_bytes, port, uhd.libpyuhd.types.time_spec(0.0), False)
rx_md = uhd.types.RXMetadata()
num_rx = rx_streamer.recv(output_data, rx_md, timeout)

Happy coding!

Wade


On Mon, Jan 31, 2022 at 9:45 AM Ofer Saferman <ofer@navigicom.com> wrote:

> Hello,
>
> I am working on a E320 USRP unit and using UHD-4.1.0.5.
> I prepared my own FPGA image that has 1 radio block and 1 replay block
> with 2 ports (channels)
> I would like to be able to simultaneously perform playback of 1 Tx channel
> and recording of 2 Rx channels (to/from different memory locations)
> The example rfnoc_replay_samples_from_file.cpp is only helpful to some
> extent because it shows only the playback path and I am having some
> difficulty setting up the recording path.
>
> I have a few questions about the replay block functionality and
> connectivity that I hope you may be able to resolve.
>
> 1. Is the replay block bi-directional? If I have a replay block with 1
> channel, can it be used for both playback of samples and recording of
> samples (from/to different memory locations) simultaneously ? or does each
> operation require one channel?
> 2. If the answer to question (1) is no then I guess I need at least 3
> replay channels. Is it possible to define in the FPGA image (in the yml
> file) a replay block with 3 channels (ports) or does it have to be a power
> of 2? a multiple of 2? I didn't want to try and see what happens because it
> takes a while to compile the FPGA image and I would rather get it right on
> the 1st try.
> 3. I would like to issue samples recording at a predetermined time for a
> fixed size data chunk and then at my own leisure dump the memory buffer
> that was recorded to a file. Since I don't have a working example I am
> having some difficulty getting it right.
> a. The graph should be Radio -->  Replay --> rx_stream. Is this correct?
> b. I should start my recording with replay_ctrl->record_restart and check
> for fullness, right?
> c. Then how do I get the rx_stream to dump it to file? Do I need to do
> playback for this to happen, mirroring what is going on in the
> rfnoc_replay_samples_from_file example?
> If someone has a working code snippet I would appreciate it if they can
> share it.
>
> Thanks,
> Ofer Saferman
>
> --
> This message has been scanned for viruses and
> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and is
> believed to be clean. _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000004600ee05d6e8a570
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Ofer,</div><div><br></div><div>1. It is bidirectio=
nal. You can think of the &quot;record&quot; and the &quot;play&quot; compo=
nents as independent, but connected to the same memory. So be careful not t=
o read/write to the same memory space and be aware that reading and writing=
 simultaneously slows down the DRAM making under/overflow more likely. But =
I think the E320 DRAM should be fast enough for your use case.</div><div><b=
r></div><div>2. The number of ports on the Replay block doesn&#39;t have an=
y restrictions that I know of. Any positive integer should be fine. You cou=
ld also leave ports unused/unconnected if it was somehow a problem.<br></di=
v><div><br></div><div>3. To record at a predetermined time for a fixed amou=
nt of data, you should be able to issue a stream command with the time and =
the number of samples you want.<br></div><div>a. Yes.</div><div>b. Yes. The=
 first time you want to record data, you call record(). To record to the sa=
me buffer again, call record_restart(). Make sure num_samps for your stream=
 command does not exceed the size of your record buffer, or else the radio =
will overflow. <br></div><div>c. Yes, you need to play back the buffer. Sin=
ce the output is connected to the rx streamer, it&#39;ll stream to the host=
. So you can call recv() on your rx streamer to capture the data. Something=
 like this (in Python):<br>replay.play(0, num_bytes, port, uhd.libpyuhd.typ=
es.time_spec(0.0), False)<br>rx_md =3D uhd.types.RXMetadata()<br>num_rx =3D=
 rx_streamer.recv(output_data, rx_md, timeout)</div><div><br></div><div>Hap=
py coding!<br></div><div><br></div><div>Wade<br></div><div><br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon=
, Jan 31, 2022 at 9:45 AM Ofer Saferman &lt;<a href=3D"mailto:ofer@navigico=
m.com">ofer@navigicom.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello,</div><div><br></div><=
div>I am working on a E320 USRP unit and using UHD-4.1.0.5.<br></div><div>I=
 prepared my own FPGA image that has 1 radio block and 1 replay block with =
2 ports (channels)</div><div>I would like to be able to simultaneously perf=
orm playback of 1 Tx channel and recording of 2 Rx channels (to/from differ=
ent memory locations)</div><div>The example rfnoc_replay_samples_from_file.=
cpp is only helpful to some extent because it shows only the playback path =
and I am having some difficulty setting up the recording path.<br></div><di=
v></div><div><br></div><div>I have a few questions about the replay block f=
unctionality and connectivity that I hope you may be able to resolve.</div>=
<div><br></div><div>1. Is the replay block bi-directional? If I have a repl=
ay block with 1 channel, can it be used for both playback of samples and re=
cording of samples (from/to different memory locations) simultaneously ? or=
 does each operation require one channel?</div><div>2. If the answer to que=
stion (1) is no then I guess I need at least 3 replay channels. Is it possi=
ble to define in the FPGA image (in the yml file) a replay block with 3 cha=
nnels (ports) or does it have to be a power of 2? a multiple of 2? I didn&#=
39;t want to try and see what happens because it takes a while to compile t=
he FPGA image and I would rather get it right on the 1st try.</div><div>3. =
I would like to issue samples recording at a predetermined time for a fixed=
 size data chunk and then at my own leisure dump the memory buffer that was=
 recorded to a file. Since I don&#39;t have a working example I am having s=
ome difficulty getting it right. <br></div><div>a. The graph should be Radi=
o --&gt;=C2=A0 Replay --&gt; rx_stream. Is this correct? <br></div><div>b. =
I should start my recording with replay_ctrl-&gt;record_restart and check f=
or fullness, right?</div><div>c. Then how do I get the rx_stream to dump it=
 to file? Do I need to do playback for this to happen, mirroring what is go=
ing on in the=20
rfnoc_replay_samples_from_file example? <br></div><div>If someone has a wor=
king code snippet I would appreciate it if they can share it.</div><div><br=
></div><div>Thanks,</div><div>Ofer Saferman<br></div></div>
<br>--=20
<br>This message has been scanned for viruses and
<br>dangerous content by
<a href=3D"http://www.mailscanner.info/" target=3D"_blank"><b>MailScanner</=
b></a>, and is
<br>believed to be clean.

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000004600ee05d6e8a570--

--===============2754704107817428625==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2754704107817428625==--
