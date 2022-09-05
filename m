Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB935AD63E
	for <lists+usrp-users@lfdr.de>; Mon,  5 Sep 2022 17:24:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C7102380FEA
	for <lists+usrp-users@lfdr.de>; Mon,  5 Sep 2022 11:24:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662391467; bh=NRBC8h8DKgJ2c/NtpE07XaAOGGdfQwgQEzPb9yOKrJI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=WMQhMrfEp6hboBL9/32/FLKPJXTLPZLzyajV2zrbKGkOmv6kmo7W/v26XZxBUN5w4
	 eGpO7P8W/6P/NQ7V61HmscalCjqb1QwIZhmrf2xIYyEmeNhmxauoagkjV3qDb2FEGz
	 ab8y0JiQb4DhkBwlEW+FYyh0btAkP/d6PMAQhk6hNvGv/w5yAWl68ejWTsHmcXjKty
	 ujFi/6cu6teAeaG46V2U0kVDG0d0UiGe0los0oSB98wOhvYPuV41ubt6IweG2Zx7Iw
	 TRKkQuW4TRVTovoCmT88RcqV7FmCofBFdHhqT/DK9M7n6WjUWJ5O7dn3EO/O36YFrb
	 tKKA9cN7n6vuQ==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 0460D380D7A
	for <usrp-users@lists.ettus.com>; Mon,  5 Sep 2022 11:22:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eio6R+hO";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id c9so6476113qkk.6
        for <usrp-users@lists.ettus.com>; Mon, 05 Sep 2022 08:22:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date;
        bh=HmXfYwfTCvL/x6kZXFFxX2Gokq4iypY30nUDXz1AF60=;
        b=eio6R+hOlDZF6I9TXuO3FRMjzN8KZgSiMhMAC0y/Srw4ixZPTReGjdsttm63xsnTnV
         rK7fzfIjEDyqLdQTbT18/Aa1H/PKg1c2/ydCaGfxtFj+nF5upJOs3lzwB5zXqL3RjuAa
         4V06EUrPImNLPLTvaCQQex4vzS7k23JScn2X0BJ4so1Ja204yjo2AuxiCcI9ZwIGv+g7
         C/okEZt/TyPX8ujf3pJvTkD07oaqZmC+q7hnVITiwgv0/43Kadwb3YmV+5dJT9wcWGR/
         jZtXZe3+ez7E+BU7fbcndNod17uB8Vd7R9Ms4x7/f+q/V9wHhkcUeT6bQXXTp06rMbiI
         WBpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date;
        bh=HmXfYwfTCvL/x6kZXFFxX2Gokq4iypY30nUDXz1AF60=;
        b=G7cVjTfS6QkhoPsTTdKa3XJMZf26pPPqUsZvD5MHWUex0KFINw4EC/RoxhAW5ghAlj
         6RdJfgmu6wj1pI51DcxO3KjNFm2+btc5Mipjt4PG6UoG32lOHML3251uCgTSNyKbl0uj
         exLythtqcuaNPJeg6jPvt23LGlSkgknDHqsE34FtcW66v3PA/h3LxwKhFyCx8r9DWqeN
         Ssr6DyvtCBL0qGiKTQfpNVhjscypEKHqXsBF382D6HZJxET6Ney1gsoJBVAEoeOJaARM
         32kB5Q8LcUFc+/OF2VUIDH9kMJ7PT84vMDMQIjAZ7GMh65q/b7/USV3zA8Y1E32dUtUN
         Nw+g==
X-Gm-Message-State: ACgBeo1ocgEZm3lTlIWEgdbVwUeWsU8ZoDd86CvGQ82HtemurT7wrq2O
	JNDAPJeAXJgLvCuvyaHfoBnOcowve4Y=
X-Google-Smtp-Source: AA6agR7FBO75XWB790jU5LOwOJRhVbA2WFAuODtD1nfyDZ7V4x5/nVrkiy+EgLBtdJabNFqthIA2/Q==
X-Received: by 2002:a05:620a:258b:b0:6c8:c859:bb11 with SMTP id x11-20020a05620a258b00b006c8c859bb11mr2038398qko.119.1662391351215;
        Mon, 05 Sep 2022 08:22:31 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id r3-20020ae9d603000000b006af0ce13499sm8467176qkk.115.2022.09.05.08.22.30
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Sep 2022 08:22:30 -0700 (PDT)
Message-ID: <88d794df-a143-8005-7b22-8ebe8d83d0a7@gmail.com>
Date: Mon, 5 Sep 2022 11:22:30 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <Ucv51sd8QfcKkwEWXkz1gmGCKW5NFL2jNHR7ErW504@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <Ucv51sd8QfcKkwEWXkz1gmGCKW5NFL2jNHR7ErW504@lists.ettus.com>
Message-ID-Hash: HOJF7G655J73MHJSGUGWAQBBRWW6N5IS
X-Message-ID-Hash: HOJF7G655J73MHJSGUGWAQBBRWW6N5IS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E312 ad9361 tuning() source code (new version)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HOJF7G655J73MHJSGUGWAQBBRWW6N5IS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3090472197263749084=="

This is a multi-part message in MIME format.
--===============3090472197263749084==
Content-Type: multipart/alternative;
 boundary="------------usL1su7wIw0VKDJmO38jOMq4"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------usL1su7wIw0VKDJmO38jOMq4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-09-05 10:39, yanzhanggc@gmail.com wrote:
>
> Hi, all,
>
> I am having a USRP E312 and is working on implementing a stepped=20
> frequency radar application. The bandwidth of the radar is 1 GHz and=20
> the frequency step size is 10 MHz. My current implementation is=20
> similar to the example code =E2=80=9Ctxrx_loopback_to_file.cpp=E2=80=9D=
 : a transmit=20
> thread sending a same baseband signal at the background; a loop=20
> handling the tuning center frequency and receiving data to a buffer.
>
> The following shows the code snippets.
>
> 1.
>
>     the transmit thread function: just sending a same baseband signal
>     continuously
>
> void transmit_worker(
> std::vector<std::complex<float>> buff,
> uhd::tx_streamer::sptr tx_streamer,
> uhd::tx_metadata_t metadata,
> int num_channels) {
> std::vector<std::complex<float>*> buffs(num_channels, &buff.front());
>
> // send data until the signal handler gets called
> while (not stop_signal_called) {
> // send the entire contents of the buffer tx_streamer->send(buffs,=20
> buff.size(), metadata); metadata.start_of_burst =3D false;=20
> metadata.has_time_spec =3D false;
>
> }
>
> // send a mini EOB packet metadata.
> end_of_burst =3D true; tx_streamer->send("", 0, metadata);
>
> }
>
> 1.
>
>     the loop handling the tuning and receiving:
>
> // tuning and receiving
> int count =3D 100; // number of frequencies
> int freq_step =3D 10e6; // frequency step size
> double start =3D usrp->get_time_now().get_real_secs();
>
> for(int i =3D 0; i < count; i++) {
> uhd::tune_request_t tune_request(600e6 + i*freq_step);
> // tuning usrp->set_rx_freq(tune_request, 0);=20
> usrp->set_tx_freq(tune_request, 0); // receive samples=20
> stream_cmd.time_spec =3D usrp->get_time_now() + uhd::time_spec_t(0.01);=
=20
> rx_stream->issue_stream_cmd(stream_cmd); size_t num_rx_samps =3D=20
> rx_stream->recv(buff_ptrs[i], samps_per_buff, md);
>
> }
>
> I use the usrp.get_time_now() function to timing the loop. Here is=20
> what I=E2=80=99ve found: The uhd ad9361 seems to run a calibration proc=
edure=20
> when there is a frequency jump over 100 MHz. And each calibration=20
> takes about 2 seconds for my measurements. With my current setup (100=20
> steps and 10 MHz frequency step size), the total time of the loop is=20
> 25.6 seconds. There are 9 calibrations in the loop which takes 18 secon=
ds.
>
> My goal is to find the source code that implements AD9361=E2=80=99s tun=
ing=20
> function in the UHD source code so that I can comment out the=20
> calibration part to speed up the frequency tuning.
>
> The following source code files are related to AD9361 tuning:
>
>  *
>
>     the set_tx_frequency() implemented in
>     |uhd/host/lib/usrp/dboard/e3xx/e3xx_radio_control_impl.cpp|
>
>
> double e3xx_radio_control_impl::set_tx_frequency(const double freq,=20
> const size_t chan) {
>
> RFNOC_LOG_TRACE("set_tx_frequency(f=3D" << freq << ", chan=3D" << chan =
<<=20
> ")"); std::lock_guardstd::mutex l(_set_lock);
>
> double clipped_freq =3D uhd::clip(freq, AD9361_TX_MIN_FREQ,=20
> AD9361_TX_MAX_FREQ);
>
> double coerced_freq =3D=20
> _ad9361->tune(get_which_ad9361_chain(TX_DIRECTION, chan, _fe_swap),=20
> clipped_freq);
> // The E3xx devices have one LO for TX, if we change one channel's=20
> frequency, we change the other, too
>
> for (size_t chan_idx =3D 0; chan_idx < E3XX_NUM_CHANS; ++chan_idx) {=20
> radio_control_impl::set_tx_frequency(coerced_freq, chan_idx); }
>
> // Front-end switching
> _set_atr_bits(chan);
>
> return coerced_freq;
>
> }
>
>  *
>
>     the tune method in line 227 in the above figure calls the tune()
>     function in: |uhd/host/lib/usrp/dboard/e3xx/e3xx_ad9361_iface.cpp|
>
>
> double tune(const std::string& which, const double value) override {
>
> |// return _rpcc->request_with_token<double>( // E3XX_TUNE_TIMEOUT,=20
> this->_rpc_prefix + "catalina_tune", which, value); return=20
> _rpcc->request_with_token<double>( E3XX_TUNE_TIMEOUT,=20
> this->_rpc_prefix + "tune", which, value);|
>
> }
>
> Notice that the original source code is =E2=80=9Ccatalina_tune=E2=80=9D=
 and I changed=20
> it to =E2=80=9Ctune=E2=80=9D because my experiments showed =E2=80=9Ctun=
e=E2=80=9D is much faster than=20
> =E2=80=9Ccatalina_tune=E2=80=9D.
>
>  *
>
>     Finally, I find the tune() function above seems to call the tune()
>     function in:
>     |uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp|
>
>
> const double ad9361_device_t::AD9361_MAX_GAIN =3D 89.75; const double=20
> ad9361_device_t::AD9361_MIN_CLOCK_RATE =3D 220e3; const double=20
> ad9361_device_t::AD9361_MAX_CLOCK_RATE =3D 61.44e6; const double=20
> ad9361_device_t::AD9361_CAL_VALID_WINDOW =3D 100e6; // Max bandwdith is=
=20
> due to filter rolloff in analog filter stage const double=20
> ad9361_device_t::AD9361_MIN_BW =3D 200e3; const double=20
> ad9361_device_t::AD9361_MAX_BW =3D 56e6;
>
> I find in |ad9361_device.cpp |that AD9361_CAL_VALID_WINDOW is=20
> defaulted to 100 MHz and I change the 100 MHz to 1 GHz. But nothing=20
> seems to change, the device still do a calibration every 100 MHz.
>
> I also comment out the calibration code in=20
> |uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cppb|, but still=20
> nothing seems to be changed. The device is still doing calibration=20
> every 100 MHz.
>
> Anyone knows where the source code for tuning ad9361 with E312 device=20
> is ? I wish I can locate the tuning source code so that I can change=20
> it to speed up frequency tuning. In my application, if I can turn off=20
> the calibration that happens every 100MHz, then the total tuning time=20
> is only 8 seconds, which is just what I need. But I can not locate the=20
> true tuning source code.
>
> Thanks,
>
> Yan
>
>
Recent system images for E3xx devices use the MPM architecture, so it's=20
probably buried in the device-side MPM code.
 =C2=A0 I haven't found exactly where yet.

But I'll warn you that disabling all the various calibrations of the=20
AD9361 is done at your own peril.



--------------usL1su7wIw0VKDJmO38jOMq4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-09-05 10:39,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yanzhanggc@gma=
il.com">yanzhanggc@gmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:Ucv51sd8QfcKkwEWXkz1gmGCKW5NFL2jNHR7ErW504@lists.ettus.=
com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi, all,</p>
      <p>I am having a USRP E312 and is working on implementing a
        stepped frequency radar application. The bandwidth of the radar
        is 1 GHz and the frequency step size is 10 MHz. My current
        implementation is similar to the example code
        =E2=80=9Ctxrx_loopback_to_file.cpp=E2=80=9D : a transmit thread s=
ending a same
        baseband signal at the background; a loop handling the tuning
        center frequency and receiving data to a buffer.</p>
      <p>The following shows the code snippets.</p>
      <ol>
        <li>
          <p>the transmit thread function: just sending a same baseband
            signal continuously</p>
        </li>
      </ol>
      <p>void transmit_worker(<br>
        std::vector&lt;std::complex&lt;float&gt;&gt; buff, <br>
        uhd::tx_streamer::sptr tx_streamer, <br>
        uhd::tx_metadata_t metadata, <br>
        int num_channels) {<br>
        std::vector&lt;std::complex&lt;float&gt;*&gt;
        buffs(num_channels, &amp;buff.front());</p>
      <p>// send data until the signal handler gets called <br>
        while (not stop_signal_called) {<br>
        // send the entire contents of the buffer
        tx_streamer-&gt;send(buffs, buff.size(), metadata);
        metadata.start_of_burst =3D false;
        metadata.has_time_spec =3D false;</p>
      <p>}</p>
      <p>// send a mini EOB packet metadata.<br>
        end_of_burst =3D true; tx_streamer-&gt;send("", 0, metadata);</p>
      <p>}</p>
      <ol>
        <li>
          <p>the loop handling the tuning and receiving:</p>
        </li>
      </ol>
      <p>// tuning and receiving <br>
        int count =3D 100; // number of frequencies <br>
        int freq_step =3D 10e6; // frequency step size <br>
        double start =3D usrp-&gt;get_time_now().get_real_secs(); <br>
        <br>
        for(int i =3D 0; i &lt; count; i++) {<br>
        uhd::tune_request_t tune_request(600e6 + i*freq_step);<br>
        // tuning usrp-&gt;set_rx_freq(tune_request, 0);
        usrp-&gt;set_tx_freq(tune_request, 0); // receive samples
        stream_cmd.time_spec =3D usrp-&gt;get_time_now() +
        uhd::time_spec_t(0.01);
        rx_stream-&gt;issue_stream_cmd(stream_cmd); size_t num_rx_samps
        =3D rx_stream-&gt;recv(buff_ptrs[i], samps_per_buff, md);
        <br>
      </p>
      <p>}</p>
      <p>I use the usrp.get_time_now() function to timing the loop. Here
        is what I=E2=80=99ve found: The uhd ad9361 seems to run a calibra=
tion
        procedure when there is a frequency jump over 100 MHz. And each
        calibration takes about 2 seconds for my measurements. With my
        current setup (100 steps and 10 MHz frequency step size), the
        total time of the loop is 25.6 seconds. There are 9 calibrations
        in the loop which takes 18 seconds.</p>
      <p>My goal is to find the source code that implements AD9361=E2=80=99=
s
        tuning function in the UHD source code so that I can comment out
        the calibration part to speed up the frequency tuning.</p>
      <p>The following source code files are related to AD9361 tuning:</p=
>
      <ul>
        <li>
          <p>the set_tx_frequency() implemented in <code>uhd/host/lib/usr=
p/dboard/e3xx/e3xx_radio_control_impl.cpp</code></p>
        </li>
      </ul>
      <p><br>
      </p>
      <p>double e3xx_radio_control_impl::set_tx_frequency(const double
        freq, const size_t chan) {</p>
      <p>RFNOC_LOG_TRACE("set_tx_frequency(f=3D" &lt;&lt; freq &lt;&lt; "=
,
        chan=3D" &lt;&lt; chan &lt;&lt; ")"); std::lock_guard<a
          href=3D"std::mutex" moz-do-not-send=3D"true"
          class=3D"moz-txt-link-freetext">std::mutex</a> l(_set_lock);</p=
>
      <p>double clipped_freq =3D uhd::clip(freq, AD9361_TX_MIN_FREQ,
        AD9361_TX_MAX_FREQ);</p>
      <p>double coerced_freq =3D
        _ad9361-&gt;tune(get_which_ad9361_chain(TX_DIRECTION, chan,
        _fe_swap), clipped_freq); <br>
        // The E3xx devices have one LO for TX, if we change one
        channel's frequency, we change the other, too </p>
      <p>for (size_t chan_idx =3D 0; chan_idx &lt; E3XX_NUM_CHANS;
        ++chan_idx) { radio_control_impl::set_tx_frequency(coerced_freq,
        chan_idx); }</p>
      <p>// Front-end switching <br>
        _set_atr_bits(chan);</p>
      <p>return coerced_freq;</p>
      <p>}</p>
      <ul>
        <li>
          <p>the tune method in line 227 in the above figure calls the
            tune() function in: <code>uhd/host/lib/usrp/dboard/e3xx/e3xx_=
ad9361_iface.cpp</code></p>
          <p><br>
          </p>
        </li>
      </ul>
      <p>double tune(const std::string&amp; which, const double value)
        override {</p>
      <pre><code>// return _rpcc-&gt;request_with_token&lt;double&gt;(
//     E3XX_TUNE_TIMEOUT, this-&gt;_rpc_prefix + "catalina_tune", which, =
value);

    return _rpcc-&gt;request_with_token&lt;double&gt;(
    E3XX_TUNE_TIMEOUT, this-&gt;_rpc_prefix + "tune", which, value);</cod=
e></pre>
      <p>}</p>
      <p>Notice that the original source code is =E2=80=9Ccatalina_tune=E2=
=80=9D and I
        changed it to =E2=80=9Ctune=E2=80=9D because my experiments showe=
d =E2=80=9Ctune=E2=80=9D is
        much faster than =E2=80=9Ccatalina_tune=E2=80=9D.</p>
      <ul>
        <li>
          <p>Finally, I find the tune() function above seems to call the
            tune() function in: <code>uhd/host/lib/usrp/common/ad9361_dri=
ver/ad9361_device.cpp</code></p>
          <p><br>
          </p>
        </li>
      </ul>
      <p>const double ad9361_device_t::AD9361_MAX_GAIN =3D 89.75; const
        double ad9361_device_t::AD9361_MIN_CLOCK_RATE =3D 220e3; const
        double ad9361_device_t::AD9361_MAX_CLOCK_RATE =3D 61.44e6; const
        double ad9361_device_t::AD9361_CAL_VALID_WINDOW =3D 100e6; // Max
        bandwdith is due to filter rolloff in analog filter stage const
        double ad9361_device_t::AD9361_MIN_BW =3D 200e3; const double
        ad9361_device_t::AD9361_MAX_BW =3D 56e6;</p>
      <p>I find in <code>ad9361_device.cpp </code>that
        AD9361_CAL_VALID_WINDOW is defaulted to 100 MHz and I change the
        100 MHz to 1 GHz. But nothing seems to change, the device still
        do a calibration every 100 MHz.</p>
      <p>I also comment out the calibration code in <code>uhd/host/lib/us=
rp/common/ad9361_driver/ad9361_device.cppb</code>,
        but still nothing seems to be changed. The device is still doing
        calibration every 100 MHz.</p>
      <p>Anyone knows where the source code for tuning ad9361 with E312
        device is ? I wish I can locate the tuning source code so that I
        can change it to speed up frequency tuning. In my application,
        if I can turn off the calibration that happens every 100MHz,
        then the total tuning time is only 8 seconds, which is just what
        I need. But I can not locate the true tuning source code.</p>
      <p>Thanks,</p>
      <p>Yan</p>
      <br>
    </blockquote>
    Recent system images for E3xx devices use the MPM architecture, so
    it's probably buried in the device-side MPM code.<br>
    =C2=A0 I haven't found exactly where yet.<br>
    <br>
    But I'll warn you that disabling all the various calibrations of the
    AD9361 is done at your own peril.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------usL1su7wIw0VKDJmO38jOMq4--

--===============3090472197263749084==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3090472197263749084==--
