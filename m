Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D83169F39B7
	for <lists+usrp-users@lfdr.de>; Mon, 16 Dec 2024 20:25:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 185DC3854A8
	for <lists+usrp-users@lfdr.de>; Mon, 16 Dec 2024 14:25:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734377146; bh=Pljz7fEaGftiTFA1zIFhBFrfbBXOWJq6aWdNr11Llpc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=C/YQEOGVSFVoEiGgdx89R34Husj3uKxz5aw1hxQeDL2+ux4MeJlSBc9gB05blQ9YM
	 PPtNXCpX1mstI7i3uLfsmYCqCnLGxxaUXwD8ks/l7JGt5HxCJtarA6OrDTscl614Tz
	 fxmQU40ZC9NN45+p6oi3trtD5QaBRktWmVqo+dc5wZsggmbaf9LzHYUHmocghBWh3I
	 G41nm++RsQoxWcxvAOTJ3ZIwP3o4qxVf8oGKpoFoGC/HKQI4JsTeeU1e/5W827A8vV
	 60rd55Xba+Q4MTO3OGJ/gX+XQssteHeZKu6Qg5cvNFZWPyz6qNybqMTHfWrdt09xFk
	 N0y/G6fLD37Bw==
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 71A08384CC4
	for <usrp-users@lists.ettus.com>; Mon, 16 Dec 2024 14:24:47 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ur+9qMa/";
	dkim-atps=neutral
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5d3f249f3b2so6342448a12.3
        for <usrp-users@lists.ettus.com>; Mon, 16 Dec 2024 11:24:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734377086; x=1734981886; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kNp/ycgncG0AqlFjwpK/itALRyOBhgYzOwun0kdz8tA=;
        b=Ur+9qMa/dK6l2rH7HvHBDBoWsR1TyJDGwgnQdoRCTLZNcKsEh/+3f9rZeWbdeTgrgY
         ZoIXubsBmK/4dZ3wH0X64hq+UDx0fwnDHIG0tUnfpoZAixrMQ4ETLO+sQpXaskw+RETU
         7r7ggyT84hRBOkfTYhCNSIj8wnxaX6vws/2O7LZMvh//6oMdM1yG2pkcylKf9EC34otr
         HC7jtn8oYBrZnqon9KzmQ1otZwfrRUhxGJ/Ov3sp/BVXPhBjxzogIe/NkThFbT/ikb/I
         WvFzeWosyfXZuTggqnM2qZUOznHo675fy8eGcouqdW6p7NJONu0cZPpQrDJkFLpeuA7u
         xtJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734377086; x=1734981886;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kNp/ycgncG0AqlFjwpK/itALRyOBhgYzOwun0kdz8tA=;
        b=vFgox4njyUG0R8qjwiI7/HFEvF1+jZJlrJeFXd2KHcaLwLJmlmdcA6CqztrOqK3a7o
         Vc2OG30d3tjlvHaqzLwJR5C6Bf2kMVCUCnFyWHeyaS94H4nA6ZNU8foICQBgVvMQqz3b
         KnCfdkKXk1iJd2EO5H1AccP9QkaZE6NWK3BOopv19KpWAZCdFvj676cJOF1FtbTPKTBZ
         moghjztJg4HNs8QsY9Edek9mnJEuoUfGR36tkToCa8hxvegYUm+kbGIsDD0tVEh4lgmj
         7nrBMlA235QeHSWJjY5D/j/w4heuADr5JMs/SNh8f2CrpYHG3vAJ5pY+JhJ5NSFFlO9I
         8Vug==
X-Gm-Message-State: AOJu0YwCFqyeQtSFTOlsmmPcMypXpmbWuj086XBQDIbcLhdgdibooout
	PRSMwa0Y/uw1i/f4CjW9BDDAcgoJ3/Ks3e0SkFHnijta5QTk3rp4mOblhOggy8fhsAgULT8BMWn
	b6u1CDbsBcIm5rpkSANCgH2QfKy14Bw==
X-Gm-Gg: ASbGncuf8d8KpJUoLU5SId24ZEMVBmzmF0TK+tYFAHfCdrvzVbq1nBBzAj3lw9jZ8X1
	uCt+nTJKoLAouo0ogYFZD1B4WZJzlvbJ5R/IM5Q==
X-Google-Smtp-Source: AGHT+IGJ7tyxQcjKtzPAFAx+g5NJyIFnYYFypekqD1ggLMrZVGMWU6Fgnl7MvB/JGMbr8ZN7IRwfHgO2IBty2Rytoks=
X-Received: by 2002:a05:6402:5189:b0:5d3:da65:ff26 with SMTP id
 4fb4d7f45d1cf-5d63c4078d7mr28487771a12.31.1734377085976; Mon, 16 Dec 2024
 11:24:45 -0800 (PST)
MIME-Version: 1.0
References: <244d0fbb-2687-c74e-0b9d-e1de1122d382@novagrid.com>
 <5fbd3c1d-1ab1-f199-7419-a670665f37f4@novagrid.com> <c9c6714e-8ef3-48ba-8a90-25be1f6b2285@gmail.com>
In-Reply-To: <c9c6714e-8ef3-48ba-8a90-25be1f6b2285@gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Mon, 16 Dec 2024 14:24:34 -0500
Message-ID: <CAEXYVK4ryoiWnLRActkNZ-E+hSBog5wt38NGVwP1cp90Qq00qA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 6MVU4AZ2CUEUCU2UFDQBVZUQYQZAKSVR
X-Message-ID-Hash: 6MVU4AZ2CUEUCU2UFDQBVZUQYQZAKSVR
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Sampling channels at different rates
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6MVU4AZ2CUEUCU2UFDQBVZUQYQZAKSVR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7816828291739393786=="

--===============7816828291739393786==
Content-Type: multipart/alternative; boundary="0000000000001dc9fc062968221a"

--0000000000001dc9fc062968221a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 16, 2024 at 1:57=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 16/12/2024 13:47, Christophe Grimault wrote:
>
> I followed your advice and I'm getting closer !-)
>
> I tried this :
>
> usrp =3D uhd.usrp.MultiUSRP(f"addr=3D192.168.30.2")
> duration =3D 10.0start_time_spec =3D uhd.libpyuhd.types.time_spec(usrp.ge=
t_time_now().get_real_secs() + 1.0)
>
> rx_rates =3D [390625.0*2, 390625.0]
> # ---------------# Craft commands# ---------------# Start with chan 0 ...=
usrp.set_rx_rate(rx_rates[0], chan=3D0)
> rx_tune_request0 =3D uhd.types.TuneRequest(1100.0e6)
> usrp.set_rx_freq(tune_request=3Drx_tune_request0, chan=3D0)
> usrp.set_rx_gain(45.0, chan=3D0)
> num_samps0 =3D math.ceil(int(usrp.get_rx_rate(chan=3D0)) * duration)
>
> rx_streamer_args0 =3D uhd.usrp.StreamArgs("fc32", "sc16")
> rx_streamer_args0.channels =3D [0]
> rx_streamer0 =3D usrp.get_rx_stream(rx_streamer_args0)
> max_samps_per_packet =3D rx_streamer0.get_max_num_samps()
> L0 =3D math.ceil(num_samps0 / max_samps_per_packet) * max_samps_per_packe=
t
> recv_buffer0 =3D np.zeros(L0, dtype=3Dnp.complex64)
> stream_cmd0 =3D uhd.types.StreamCMD(uhd.types.StreamMode.start_cont)  #nu=
m_done)stream_cmd0.stream_now =3D Falsestream_cmd0.num_samps =3D num_samps0
> stream_cmd0.time_spec =3D start_time_spec
> # Then chan 1, which is 2 times slower.usrp.set_rx_rate(rx_rates[1], chan=
=3D1)
> rx_tune_request1 =3D uhd.types.TuneRequest(1100.0e6)
> usrp.set_rx_freq(tune_request=3Drx_tune_request1, chan=3D1)
> usrp.set_rx_gain(35.0, chan=3D1)
> num_samps1 =3D math.ceil(int(usrp.get_rx_rate(chan=3D1)) * duration)
>
> rx_streamer_args1 =3D uhd.usrp.StreamArgs("fc32", "sc16")
> rx_streamer_args1.channels =3D [1]
> rx_streamer1 =3D usrp.get_rx_stream(rx_streamer_args1)
> max_samps_per_packet =3D rx_streamer1.get_max_num_samps()
> L1 =3D math.ceil(num_samps1 / max_samps_per_packet) * max_samps_per_packe=
t
> recv_buffer1 =3D np.zeros(L1, dtype=3Dnp.complex64)
> stream_cmd1 =3D uhd.types.StreamCMD(uhd.types.StreamMode.start_cont)  #nu=
m_done)stream_cmd1.stream_now =3D Falsestream_cmd1.num_samps =3D num_samps1
> stream_cmd1.time_spec =3D start_time_spec
> # --------------------------------------------------# Launch sampling on =
both streamers, i.e. channels# --------------------------------------------=
------rx_streamer0.issue_stream_cmd(stream_cmd0)
> rx_streamer1.issue_stream_cmd(stream_cmd1)
>
> metadata0 =3D uhd.types.RXMetadata()
> nb_samples0 =3D rx_streamer0.recv(recv_buffer0, metadata0, 3.0)
>
> metadata1 =3D uhd.types.RXMetadata()
> nb_samples1 =3D rx_streamer1.recv(recv_buffer1, metadata1, 3.0)
>
> metadata0.time_spec.get_real_secs() - metadata1.time_spec.get_real_secs()
>
> And got the attached figures.
>
> Over the 10 s of capture, I switch of the signal at the same time on both
> channels (exact same time because the switch is before the RF coupler).
> Both capture are roughly aligned in time, but when I zoom, I see 26 us of
> delay (which is roughly 10 samples at rx_rate_1 of 390625). Am I wrong
> expecting a "perfect timing" ? And when I compute :
>
> metadata0.time_spec.get_real_secs() - metadata1.time_spec.get_real_secs()
>
> still I get 0.0 us.
>
> What am I doing wrong ? Shall I launch threads ?
>
> Any thoughts ?
>
> Thanks in advance
>
> Chris
>
> A cursory inspection of your code doesn't indicate any glaring errors, bu=
t
> your start-time is only 1 second ahead of when
>   you get the time from the device.  That MAY not be enough to get both
> streamers set-up so that they'll "trigger" at the
>   same time.
>
> What device type is this?
>

My guess is that you're going through another Halfband FIR filter
somewhere, so there is group delay that isn't being accounted for in the
digital filters.

What is the lag (in samples) of the lower rate sampled signal?

Brian

--0000000000001dc9fc062968221a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Dec 16, 2024 at 1:57=E2=80=AFPM M=
arcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun=
@gmail.com</a>&gt; wrote:</div><div class=3D"gmail_quote gmail_quote_contai=
ner"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 16/12/2024 13:47, Christophe
      Grimault wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <p>I followed your advice and I&#39;m getting closer !-)</p>
      <p>I tried this :</p>
      <div style=3D"background-color:rgb(30,31,34);color:rgb(188,190,196)">
        <pre style=3D"font-family:&quot;JetBrains Mono&quot;,monospace">usr=
p =3D uhd.usrp.MultiUSRP(<span style=3D"color:rgb(106,171,115)">f&quot;addr=
=3D192.168.30.2&quot;</span>)
duration =3D <span style=3D"color:rgb(42,172,184)">10.0
</span>start_time_spec =3D uhd.libpyuhd.types.time_spec(usrp.get_time_now<s=
pan style=3D"color:rgb(84,168,87)">()</span>.get_real_secs<span style=3D"co=
lor:rgb(84,168,87)">() </span>+ <span style=3D"color:rgb(42,172,184)">1.0</=
span>)

rx_rates =3D [<span style=3D"color:rgb(42,172,184)">390625.0</span>*<span s=
tyle=3D"color:rgb(42,172,184)">2</span>, <span style=3D"color:rgb(42,172,18=
4)">390625.0</span>]

<span style=3D"color:rgb(172,164,83)"># ---------------
</span><span style=3D"color:rgb(172,164,83)"># Craft commands
</span><span style=3D"color:rgb(172,164,83)"># ---------------
</span><span style=3D"color:rgb(172,164,83)">
</span><span style=3D"color:rgb(172,164,83)"># Start with chan 0 ...
</span>usrp.set_rx_rate(rx_rates[<span style=3D"color:rgb(42,172,184)">0</s=
pan>], <span style=3D"color:rgb(170,73,38)">chan</span>=3D<span style=3D"co=
lor:rgb(42,172,184)">0</span>)
rx_tune_request0 =3D uhd.types.TuneRequest(<span style=3D"color:rgb(42,172,=
184)">1100.0e6</span>)
usrp.set_rx_freq(<span style=3D"color:rgb(170,73,38)">tune_request</span>=
=3Drx_tune_request0, <span style=3D"color:rgb(170,73,38)">chan</span>=3D<sp=
an style=3D"color:rgb(42,172,184)">0</span>)
usrp.set_rx_gain(<span style=3D"color:rgb(42,172,184)">45.0</span>, <span s=
tyle=3D"color:rgb(170,73,38)">chan</span>=3D<span style=3D"color:rgb(42,172=
,184)">0</span>)
num_samps0 =3D math.ceil(<span style=3D"color:rgb(136,136,198)">int</span><=
span style=3D"color:rgb(84,168,87)">(</span>usrp.get_rx_rate<span style=3D"=
color:rgb(53,159,244)">(</span><span style=3D"color:rgb(170,73,38)">chan</s=
pan>=3D<span style=3D"color:rgb(42,172,184)">0</span><span style=3D"color:r=
gb(53,159,244)">)</span><span style=3D"color:rgb(84,168,87)">) </span>* dur=
ation)

rx_streamer_args0 =3D uhd.usrp.StreamArgs(<span style=3D"color:rgb(106,171,=
115)">&quot;fc32&quot;</span>, <span style=3D"color:rgb(106,171,115)">&quot=
;sc16&quot;</span>)
rx_streamer_args0.channels =3D [<span style=3D"color:rgb(42,172,184)">0</sp=
an>]
rx_streamer0 =3D usrp.get_rx_stream(rx_streamer_args0)
max_samps_per_packet =3D rx_streamer0.get_max_num_samps()
L0 =3D math.ceil(num_samps0 / max_samps_per_packet) * max_samps_per_packet
recv_buffer0 =3D np.zeros(L0, <span style=3D"color:rgb(170,73,38)">dtype</s=
pan>=3Dnp.complex64)
stream_cmd0 =3D uhd.types.StreamCMD(uhd.types.StreamMode.start_cont)  <span=
 style=3D"color:rgb(172,164,83)">#num_done)
</span>stream_cmd0.stream_now =3D <span style=3D"color:rgb(207,142,109)">Fa=
lse
</span>stream_cmd0.num_samps =3D num_samps0
stream_cmd0.time_spec =3D start_time_spec

<span style=3D"color:rgb(172,164,83)"># Then chan 1, which is 2 times slowe=
r.
</span>usrp.set_rx_rate(rx_rates[<span style=3D"color:rgb(42,172,184)">1</s=
pan>], <span style=3D"color:rgb(170,73,38)">chan</span>=3D<span style=3D"co=
lor:rgb(42,172,184)">1</span>)
rx_tune_request1 =3D uhd.types.TuneRequest(<span style=3D"color:rgb(42,172,=
184)">1100.0e6</span>)
usrp.set_rx_freq(<span style=3D"color:rgb(170,73,38)">tune_request</span>=
=3Drx_tune_request1, <span style=3D"color:rgb(170,73,38)">chan</span>=3D<sp=
an style=3D"color:rgb(42,172,184)">1</span>)
usrp.set_rx_gain(<span style=3D"color:rgb(42,172,184)">35.0</span>, <span s=
tyle=3D"color:rgb(170,73,38)">chan</span>=3D<span style=3D"color:rgb(42,172=
,184)">1</span>)
num_samps1 =3D math.ceil(<span style=3D"color:rgb(136,136,198)">int</span><=
span style=3D"color:rgb(84,168,87)">(</span>usrp.get_rx_rate<span style=3D"=
color:rgb(53,159,244)">(</span><span style=3D"color:rgb(170,73,38)">chan</s=
pan>=3D<span style=3D"color:rgb(42,172,184)">1</span><span style=3D"color:r=
gb(53,159,244)">)</span><span style=3D"color:rgb(84,168,87)">) </span>* dur=
ation)

rx_streamer_args1 =3D uhd.usrp.StreamArgs(<span style=3D"color:rgb(106,171,=
115)">&quot;fc32&quot;</span>, <span style=3D"color:rgb(106,171,115)">&quot=
;sc16&quot;</span>)
rx_streamer_args1.channels =3D [<span style=3D"color:rgb(42,172,184)">1</sp=
an>]
rx_streamer1 =3D usrp.get_rx_stream(rx_streamer_args1)
max_samps_per_packet =3D rx_streamer1.get_max_num_samps()
L1 =3D math.ceil(num_samps1 / max_samps_per_packet) * max_samps_per_packet
recv_buffer1 =3D np.zeros(L1, <span style=3D"color:rgb(170,73,38)">dtype</s=
pan>=3Dnp.complex64)
stream_cmd1 =3D uhd.types.StreamCMD(uhd.types.StreamMode.start_cont)  <span=
 style=3D"color:rgb(172,164,83)">#num_done)
</span>stream_cmd1.stream_now =3D <span style=3D"color:rgb(207,142,109)">Fa=
lse
</span>stream_cmd1.num_samps =3D num_samps1
stream_cmd1.time_spec =3D start_time_spec

<span style=3D"color:rgb(172,164,83)"># -----------------------------------=
---------------
</span><span style=3D"color:rgb(172,164,83)"># Launch sampling on both stre=
amers, i.e. channels
</span><span style=3D"color:rgb(172,164,83)"># ----------------------------=
----------------------
</span><span style=3D"color:rgb(172,164,83)">
</span>rx_streamer0.issue_stream_cmd(stream_cmd0)
rx_streamer1.issue_stream_cmd(stream_cmd1)

metadata0 =3D uhd.types.RXMetadata()
nb_samples0 =3D rx_streamer0.recv(recv_buffer0, metadata0, <span style=3D"c=
olor:rgb(42,172,184)">3.0</span>)

metadata1 =3D uhd.types.RXMetadata()
nb_samples1 =3D rx_streamer1.recv(recv_buffer1, metadata1, <span style=3D"c=
olor:rgb(42,172,184)">3.0</span>)

metadata0.time_spec.get_real_secs() - metadata1.time_spec.get_real_secs()</=
pre>
      </div>
      <p>And got the attached figures.</p>
      <p>Over the 10 s of capture, I switch of the signal at the same
        time on both channels (exact same time because the switch is
        before the RF coupler). Both capture are roughly aligned in
        time, but when I zoom, I see 26 us of delay (which is roughly 10
        samples at rx_rate_1 of 390625). Am I wrong expecting a &quot;perfe=
ct
        timing&quot; ? And when I compute :</p>
      <p>metadata0.time_spec.get_real_secs() -
        metadata1.time_spec.get_real_secs()</p>
      <p>still I get 0.0 us.</p>
      <p>What am I doing wrong ? Shall I launch threads ?</p>
      <p>Any thoughts ?</p>
      <p>Thanks in advance</p>
      <p>Chris<br>
      </p>
    </blockquote>
    A cursory inspection of your code doesn&#39;t indicate any glaring
    errors, but your start-time is only 1 second ahead of when<br>
    =C2=A0 you get the time from the device.=C2=A0 That MAY not be enough t=
o get
    both streamers set-up so that they&#39;ll &quot;trigger&quot; at the<br=
>
    =C2=A0 same time.<br>
    <br>
    What device type is this?<br></div></blockquote><div><br></div><div>My =
guess is that you&#39;re going through another Halfband FIR filter somewher=
e, so there is group delay that isn&#39;t being accounted for in the digita=
l filters.</div><div><br></div><div>What is the lag (in samples) of the low=
er rate sampled signal?</div><div><br></div><div>Brian</div></div></div>

--0000000000001dc9fc062968221a--

--===============7816828291739393786==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7816828291739393786==--
