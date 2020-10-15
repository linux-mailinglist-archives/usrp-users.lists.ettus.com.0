Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E19528F702
	for <lists+usrp-users@lfdr.de>; Thu, 15 Oct 2020 18:42:47 +0200 (CEST)
Received: from [::1] (port=41418 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kT6L0-0003eS-1R; Thu, 15 Oct 2020 12:42:46 -0400
Received: from mail-ot1-f47.google.com ([209.85.210.47]:46840)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kT6Kw-0003XT-6O
 for usrp-users@lists.ettus.com; Thu, 15 Oct 2020 12:42:42 -0400
Received: by mail-ot1-f47.google.com with SMTP id m11so3448360otk.13
 for <usrp-users@lists.ettus.com>; Thu, 15 Oct 2020 09:42:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O9cPPFGvKvGva3A8llENPVw5Y4n5/DTOmcPc0pLmdTE=;
 b=kDlq976aM9BPhMv6DSfc1iq1NQU4c2slxHjPuU79jkyA3v79BZq/hAvDoFXEUl2rG7
 OuzHshNapliYBdMnL9hZM6fka342GeXKr2pXqzLzR3D7LL3jhUVt5mzvr+6LZjDcPTsR
 /vHVGb2Dacqgjd/GwRLqMW5TJwWPkxNGau8xRT+Fr/H8I737Q6iOq13fXKKJLYsgg6rZ
 kDtQAlJ6qGez3Ib5tVn7TUMjmIWiHKwFKftHAiu7lyPRwEgZCOAEcQEL0c1wAJImQojE
 6Zv5T327D6wgS/v8SwRU/GnkB1czYtoI4bAaq40bNncjB1Vk5p2Y6g7tNqeadc8Yu9fA
 a4EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O9cPPFGvKvGva3A8llENPVw5Y4n5/DTOmcPc0pLmdTE=;
 b=VUXYRpfwF6WbRpHMSQ+ypO43J8e23ltCLQ3hutmTeN25I3MW+7Ibp/rhjLxUfGESf1
 aPAOAlwzFRscDq9eyA8oDudfdWe/JL7iMVyuzmHYdluRmnpA1UsfPoB99H7mN61ugpfO
 JWSoiZ++yBsbwVcqRyQhNumZZBIkOAzAvWnjJNjMjUH6vGzPfHKk6QivlA+bomXDTvVr
 eKdRrDarZrGbOHQ2zb/7MUk85A5MZjL7SyZp0iqT56jNELSjXX8RxMkI0PPl/tNQkDrb
 mOqiSoPMndypxQ+PbpNMeXbPgybRHN1x9jW688E6ExmdcmyBN0oLM7scIOYihv0WVQvr
 g1YQ==
X-Gm-Message-State: AOAM5322jzZp9WQN+ZCXVoa6yugT64GHXHrMOxO+F8qe7pnCY6nHyYUI
 mi8bbIJSjliwwjbZGl9/8hOBnyhoyepXq9lHS9dbbYutfDI=
X-Google-Smtp-Source: ABdhPJywMukzfdGB0g2Lz3pjrvdJus0BhJC34GL1s5icxX2doODt+kdNbUhb/yHqI5jGtRvZi7f2SCgqEDxM9g/72qc=
X-Received: by 2002:a05:6830:1151:: with SMTP id
 x17mr3316101otq.302.1602780121416; 
 Thu, 15 Oct 2020 09:42:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTR_wKawKYJEYyD=yVdcN+UchMbSkhUVtSV5wf71W=K+3g@mail.gmail.com>
 <CAFche=jRtYz-HFy_6J3bpb1X1rTrSk6+jPNj2FOtPLi2VcTsFg@mail.gmail.com>
In-Reply-To: <CAFche=jRtYz-HFy_6J3bpb1X1rTrSk6+jPNj2FOtPLi2VcTsFg@mail.gmail.com>
Date: Thu, 15 Oct 2020 12:41:50 -0400
Message-ID: <CAB__hTQQA2x3JckZDFdepVtLdpe902tKEo_QmscbAcT0cOUZEg@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Replay block in a bad state UHD-4.0
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============8030094372888027441=="
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

--===============8030094372888027441==
Content-Type: multipart/alternative; boundary="000000000000ca883005b1b853b1"

--000000000000ca883005b1b853b1
Content-Type: text/plain; charset="UTF-8"

So, the corruption does not occur anymore (to my knowledge) because I fixed
the bug in my software that would allow replay_play() to get called in some
situations prior to replay_store().  But, I'm a bit concerned that perhaps
my code could have a bug in another place that could allow this to happen.
That is why I was hoping to be able to guarantee a reset situation upon UHD
"make" or with a specific "reset" function to the replay block. This bug
was particularly bad because there was no indication of anything wrong
(e.g., Under/Overruns, Lates, other errors) and we didn't find out about it
until we started analyzing data that we had collected over several hours
last Friday.
Rob

On Thu, Oct 15, 2020 at 12:35 PM Wade Fife <wade.fife@ettus.com> wrote:

> Hi Rob,
>
> All the blocks should get reset when you create the RFNoC graph. But the
> DRAM controller and related AXI4 interconnect are outside of RFNoC, so it
> doesn't get reset when the blocks are reset. It's possible that the DRAM
> logic is in a bad state as well. It doesn't look like there's a way
> currently to reset the DRAM logic on demand.
>
> Does the corruption still occur after fixing the bug you mentioned?
>
> Wade
>
>
>
> On Wed, Oct 14, 2020 at 6:10 PM Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>> I am using the Replay block and I ran into an issue where I have gotten
>> the Replay block into a bad state which I can't seem to fix short of
>> rebooting the N310.  The way I know it is in a bad state is that the data
>> playing out is corrupted.  Although the playout is similar to what it
>> should be, there are numerous gaps & drops that indicate the corruption.
>> If I reboot the N310, the corruption disappears.  I would like to be able
>> to "reset" things without requiring an N310 reboot.
>>
>> My custom software controls the Replay block with 3 functions:
>> replay_store() and replay_play() and replay_stop(), all provided below.  I
>> don't do anything tricky like trying to store and play simultaneously.  The
>> replay_store() function is very similar to the
>> rfnoc_replay_samples_from_file() example with the exception that it doesn't
>> actually start or stop the playout. This occurs in my other 2 functions.
>>
>> The way that I get the replay block into a bad state is by failing to
>> call replay_store() prior to replay_play().  This was a bug in my software
>> that could occur in some situations (which I have since fixed). After this
>> happens, I can't produce uncorrupted playouts without rebooting the N310.
>>
>> Let me know if you have any ideas how I can "reset" the Replay block to
>> obtain uncorrupted output.
>> Rob
>>
>>
>> /*******************************************************/
>> int nd::replay_store(
>> uhd::rfnoc::replay_block_control::sptr replay_ptr,
>> size_t port,
>>     uhd::tx_streamer::sptr tx_stream,
>> std::vector<char>& samp_vec,
>> uint32_t addr
>> ){
>> const std::string ID = replay_ptr->get_block_id().to_string() + ":" +
>> std::to_string(port);
>>
>> // Constants related to the Replay block
>> const size_t bytes_per_sample = 4; // Complex signed 16-bit is 32 bits
>> per sample
>> const size_t samples_per_word = 2; // Number of sc16 samples per 64-bit
>> word
>> const size_t bytes_per_word = bytes_per_sample*samples_per_word;
>>
>> size_t num_bytes = samp_vec.size();
>>
>> // Calculate the number of 64-bit words and samples to replay
>> size_t words_to_replay = num_bytes / bytes_per_word;
>> size_t samples_to_replay = words_to_replay * samples_per_word;
>> uint32_t bytes_to_replay = words_to_replay * bytes_per_word;
>>
>> if (bytes_to_replay != num_bytes) {
>> UHD_LOGGER_WARNING(__CLASS_AND_FUNC__) << ID
>> << "Replay block requires an even number of samples. Truncating extra
>> bytes";
>> }
>>
>> // Configure a buffer in the on-board memory at address 0 that's equal in
>> // size to the file we want to play back (rounded down to a multiple of
>> // 64-bit words). Note that it is allowed to playback a different size or
>> // location from what was recorded.
>>     UHD_LOGGER_DEBUG(__CLASS_AND_FUNC__) << ID <<
>>     ": Configuring memory at addr 0x" << std::hex << addr << std::dec <<
>> " for " << bytes_to_replay << " bytes";
>> replay_ptr->stop(port); // just in case it is presently playing
>> replay_ptr->record(addr, bytes_to_replay, port);
>>
>> // Restart record buffer repeatedly until no new data appears on the
>> Replay
>> // block's input. This will flush any data that was buffered on the input.
>> UHD_LOGGER_DEBUG(__CLASS_AND_FUNC__) << ID << ": Restarting record
>> buffer";
>> auto start_time = std::chrono::steady_clock::now();
>> while (true)
>>     {
>> replay_ptr->record_restart(port);
>> std::this_thread::sleep_for(std::chrono::milliseconds(20));
>>
>> uint32_t fullness = replay_ptr->get_record_fullness(port);
>> if (fullness==0) break;
>>
>> std::chrono::duration<double> time_diff_s =
>> std::chrono::steady_clock::now() - start_time;
>> UHD_LOGGER_DEBUG(__CLASS_AND_FUNC__) << ID
>> << ": Time: " << time_diff_s.count() << ": Fullness " << fullness;
>>
>> if (time_diff_s.count() > 2.0) {
>> UHD_LOGGER_ERROR(__CLASS_AND_FUNC__) << ID << ": Timeout waiting to flush
>> record buffer";
>> return -1;
>> }
>> }
>>
>>
>>
>> ///////////////////////////////////////////////////////////////////////////
>> // Send data to replay (record the data)
>> UHD_LOGGER_INFO(__CLASS_AND_FUNC__) << ID << ": Sending " <<
>> samples_to_replay << " samples";
>>
>> uhd::tx_metadata_t tx_md;
>> tx_md.start_of_burst = true;
>> tx_md.end_of_burst   = true;
>> size_t num_tx_samps  = tx_stream->send(&samp_vec[0], samples_to_replay,
>> tx_md);
>>
>> if (num_tx_samps != samples_to_replay) {
>> UHD_LOGGER_ERROR(__CLASS_AND_FUNC__) << ID << ": Error sending samples: "
>> << num_tx_samps << "/" << samples_to_replay;
>> return -1;
>> }
>>
>>
>>
>> ///////////////////////////////////////////////////////////////////////////
>> // Wait for data to be stored in on-board memory
>>
>> UHD_LOGGER_DEBUG(__CLASS_AND_FUNC__) << ID << ": Waiting for recording to
>> complete";
>> start_time = std::chrono::steady_clock::now();
>> while (true)
>> {
>> uint32_t fullness = replay_ptr->get_record_fullness(port);
>> if (fullness>=bytes_to_replay) break;
>>
>> std::chrono::duration<double> time_diff_s =
>> std::chrono::steady_clock::now() - start_time;
>>
>> UHD_LOGGER_DEBUG(__CLASS_AND_FUNC__) << ID << ": Time: (s): " <<
>> time_diff_s.count()
>> << ": Fullness: " << fullness << " / " << bytes_to_replay;
>>
>> if (time_diff_s.count() > 2.0) {
>> UHD_LOGGER_ERROR(__CLASS_AND_FUNC__) << ID << ": Timeout waiting for
>> recording to complete";
>> return -1;
>> }
>>
>> std::this_thread::sleep_for(std::chrono::milliseconds(1));
>> }
>>
>> UHD_LOGGER_INFO(__CLASS_AND_FUNC__) << ID << ": Successfully sent " <<
>> samples_to_replay << " samples";
>>
>> return samples_to_replay;
>> }
>> /*******************************************************/
>>
>>
>>
>> /*******************************************************/
>> void nd::replay_play(
>> uhd::rfnoc::replay_block_control::sptr replay_ptr,
>> size_t port,
>> const uhd::time_spec_t start_time
>> ){
>> const std::string ID = replay_ptr->get_block_id().to_string() + ":" +
>> std::to_string(port);
>> uint64_t rec_addr = replay_ptr->get_record_offset(port);
>> uint64_t rec_size = replay_ptr->get_record_size(port);
>>
>> UHD_LOGGER_DEBUG(ID) << "Replay Started. Samples: " << (rec_size/4);
>> replay_ptr->play(rec_addr, rec_size, port, start_time, true);
>> }
>> /*******************************************************/
>>
>>
>>
>>
>> /*******************************************************/
>> void nd::replay_stop(
>> uhd::rfnoc::replay_block_control::sptr replay_ptr,
>> size_t port
>> ){
>> const std::string ID = replay_ptr->get_block_id().to_string() + ":" +
>> std::to_string(port);
>>
>> UHD_LOGGER_DEBUG(ID) << "Replay Stopped";
>> replay_ptr->stop(port);
>> }
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000ca883005b1b853b1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">So, the corruption does not occur anymore=
 (to my knowledge) because I fixed the bug in my software that would allow =
replay_play() to get called in some situations prior to replay_store().=C2=
=A0 But, I&#39;m a bit concerned that perhaps my code could have a bug in a=
nother place that could allow this to happen. That is why I was hoping to b=
e able to guarantee a reset situation upon UHD &quot;make&quot; or with a s=
pecific &quot;reset&quot; function to the replay block. This bug was partic=
ularly bad because there was no indication of anything wrong (e.g., Under/O=
verruns, Lates, other errors) and we didn&#39;t find out about it until we =
started analyzing data that we had collected over several hours last Friday=
.</div><div>Rob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Oct 15, 2020 at 12:35 PM Wade Fife &lt;<a href=3D"m=
ailto:wade.fife@ettus.com">wade.fife@ettus.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Rob,=
</div><div><br></div><div>All the blocks should get reset when you create t=
he RFNoC graph. But the DRAM controller and related AXI4 interconnect are o=
utside of RFNoC, so it doesn&#39;t get reset when the blocks are reset. It&=
#39;s possible that the DRAM logic is in a bad state as well. It doesn&#39;=
t look like there&#39;s a way currently to reset the DRAM logic on demand.<=
br></div><div><br></div><div>Does the corruption still occur after fixing t=
he bug you mentioned?</div><div><br></div><div>Wade<br></div><div><br></div=
><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Oct 14, 2020 at 6:10 PM Rob Kossler via USRP-users =
&lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr">Hi,<br><div>I am using the Replay block=
 and I ran into an issue where I have gotten the Replay block into a bad st=
ate which I can&#39;t seem to fix short of rebooting the N310.=C2=A0 The wa=
y I know it is in a bad state is that the data playing out is corrupted.=C2=
=A0 Although the playout is similar to what it should be, there are numerou=
s gaps &amp; drops that indicate the corruption.=C2=A0 If I reboot the N310=
, the corruption disappears.=C2=A0 I would like to be able to &quot;reset&q=
uot; things without requiring an N310 reboot.</div><div><br></div><div>My c=
ustom software controls the Replay block with 3 functions: replay_store() a=
nd replay_play() and replay_stop(), all provided below.=C2=A0 I don&#39;t d=
o anything tricky like trying to store and play simultaneously.=C2=A0 The r=
eplay_store() function is very similar to the rfnoc_replay_samples_from_fil=
e() example with the exception that it doesn&#39;t actually start or stop t=
he playout. This occurs in my other 2 functions.</div><div><br></div><div>T=
he way that I get the replay block into a bad state is by failing to call r=
eplay_store() prior to replay_play().=C2=A0 This was a bug in my software t=
hat could occur in some situations (which I have since fixed). After this h=
appens, I can&#39;t produce uncorrupted playouts without rebooting the N310=
.</div><div><br></div><div>Let me know if you have any ideas how I can &quo=
t;reset&quot; the Replay block to obtain uncorrupted output.</div><div>Rob<=
/div><div><br></div><div><br></div><div><font face=3D"monospace">/*********=
**********************************************/</font><br></div><div><font =
face=3D"monospace">int nd::replay_store(<br>	uhd::rfnoc::replay_block_contr=
ol::sptr replay_ptr,<br>	size_t port,<br>=C2=A0 =C2=A0 uhd::tx_streamer::sp=
tr tx_stream,<br>	std::vector&lt;char&gt;&amp; samp_vec,<br>	uint32_t addr<=
br>){<br>	const std::string ID =3D replay_ptr-&gt;get_block_id().to_string(=
) + &quot;:&quot; + std::to_string(port);<br>	<br>	// Constants related to =
the Replay block<br>	const size_t bytes_per_sample =3D 4; // Complex signed=
 16-bit is 32 bits per sample<br>	const size_t samples_per_word =3D 2; // N=
umber of sc16 samples per 64-bit word<br>	const size_t bytes_per_word =3D b=
ytes_per_sample*samples_per_word;<br>	<br>	size_t num_bytes =3D samp_vec.si=
ze();<br>	<br>	// Calculate the number of 64-bit words and samples to repla=
y<br>	size_t words_to_replay =3D num_bytes / bytes_per_word;<br>	size_t sam=
ples_to_replay =3D words_to_replay * samples_per_word;<br>	uint32_t bytes_t=
o_replay =3D words_to_replay * bytes_per_word;<br>	<br>	if (bytes_to_replay=
 !=3D num_bytes) {<br>		UHD_LOGGER_WARNING(__CLASS_AND_FUNC__) &lt;&lt; ID =
<br>		&lt;&lt; &quot;Replay block requires an even number of samples. Trunc=
ating extra bytes&quot;;<br>	}<br>	<br>	// Configure a buffer in the on-boa=
rd memory at address 0 that&#39;s equal in<br>	// size to the file we want =
to play back (rounded down to a multiple of<br>	// 64-bit words). Note that=
 it is allowed to playback a different size or<br>	// location from what wa=
s recorded.<br>=C2=A0 =C2=A0 UHD_LOGGER_DEBUG(__CLASS_AND_FUNC__) &lt;&lt; =
ID &lt;&lt;<br>=C2=A0 =C2=A0 &quot;: Configuring memory at addr 0x&quot; &l=
t;&lt; std::hex &lt;&lt; addr &lt;&lt; std::dec &lt;&lt; &quot; for &quot; =
&lt;&lt; bytes_to_replay &lt;&lt; &quot; bytes&quot;;<br>	replay_ptr-&gt;st=
op(port); // just in case it is presently playing<br>	replay_ptr-&gt;record=
(addr, bytes_to_replay, port);<br>	<br>	// Restart record buffer repeatedly=
 until no new data appears on the Replay<br>	// block&#39;s input. This wil=
l flush any data that was buffered on the input.<br>	UHD_LOGGER_DEBUG(__CLA=
SS_AND_FUNC__) &lt;&lt; ID &lt;&lt; &quot;: Restarting record buffer&quot;;=
<br>	auto start_time =3D std::chrono::steady_clock::now();<br>	while (true)=
 <br>=C2=A0 =C2=A0 {<br>		replay_ptr-&gt;record_restart(port);<br>		std::th=
is_thread::sleep_for(std::chrono::milliseconds(20));<br>		<br>		uint32_t fu=
llness =3D replay_ptr-&gt;get_record_fullness(port);<br>		if (fullness=3D=
=3D0) break;<br>		<br>		std::chrono::duration&lt;double&gt; time_diff_s =3D=
 std::chrono::steady_clock::now() - start_time;<br>		UHD_LOGGER_DEBUG(__CLA=
SS_AND_FUNC__) &lt;&lt; ID <br>		&lt;&lt; &quot;: Time: &quot; &lt;&lt; tim=
e_diff_s.count() &lt;&lt; &quot;: Fullness &quot; &lt;&lt; fullness;<br>		<=
br>		if (time_diff_s.count() &gt; 2.0) {<br>			UHD_LOGGER_ERROR(__CLASS_AND=
_FUNC__) &lt;&lt; ID &lt;&lt; &quot;: Timeout waiting to flush record buffe=
r&quot;;<br>			return -1;<br>		}<br>	}<br>	<br>	<br>	//////////////////////=
/////////////////////////////////////////////////////<br>	// Send data to r=
eplay (record the data)<br>	UHD_LOGGER_INFO(__CLASS_AND_FUNC__) &lt;&lt; ID=
 &lt;&lt; &quot;: Sending &quot; &lt;&lt; samples_to_replay &lt;&lt; &quot;=
 samples&quot;;<br>	<br>	uhd::tx_metadata_t tx_md;<br>	tx_md.start_of_burst=
 =3D true;<br>	tx_md.end_of_burst =C2=A0 =3D true;<br>	size_t num_tx_samps =
=C2=A0=3D tx_stream-&gt;send(&amp;samp_vec[0], samples_to_replay, tx_md);<b=
r>	<br>	if (num_tx_samps !=3D samples_to_replay) {<br>		UHD_LOGGER_ERROR(__=
CLASS_AND_FUNC__) &lt;&lt; ID &lt;&lt; &quot;: Error sending samples: &quot=
; &lt;&lt; num_tx_samps &lt;&lt; &quot;/&quot; &lt;&lt; samples_to_replay;<=
br>		return -1;<br>	}<br>	<br>	<br>	///////////////////////////////////////=
////////////////////////////////////<br>	// Wait for data to be stored in o=
n-board memory<br>	<br>	UHD_LOGGER_DEBUG(__CLASS_AND_FUNC__) &lt;&lt; ID &l=
t;&lt; &quot;: Waiting for recording to complete&quot;;<br>	start_time =3D =
std::chrono::steady_clock::now();<br>	while (true) <br>	{<br>		uint32_t ful=
lness =3D replay_ptr-&gt;get_record_fullness(port);<br>		if (fullness&gt;=
=3Dbytes_to_replay) break;<br>		<br>		std::chrono::duration&lt;double&gt; t=
ime_diff_s =3D std::chrono::steady_clock::now() - start_time;<br><br>		UHD_=
LOGGER_DEBUG(__CLASS_AND_FUNC__) &lt;&lt; ID &lt;&lt; &quot;: Time: (s): &q=
uot; &lt;&lt; time_diff_s.count()<br>		&lt;&lt; &quot;: Fullness: &quot; &l=
t;&lt; fullness &lt;&lt; &quot; / &quot; &lt;&lt; bytes_to_replay;<br><br>	=
	if (time_diff_s.count() &gt; 2.0) {<br>			UHD_LOGGER_ERROR(__CLASS_AND_FUN=
C__) &lt;&lt; ID &lt;&lt; &quot;: Timeout waiting for recording to complete=
&quot;;<br>			return -1;<br>		}<br>		<br>		std::this_thread::sleep_for(std:=
:chrono::milliseconds(1));<br>	}<br>	<br>	UHD_LOGGER_INFO(__CLASS_AND_FUNC_=
_) &lt;&lt; ID &lt;&lt; &quot;: Successfully sent &quot; &lt;&lt; samples_t=
o_replay &lt;&lt; &quot; samples&quot;;<br>	<br>	return samples_to_replay;<=
br>}<br>/*******************************************************/<br><br><b=
r><br>/*******************************************************/</font></div=
><div><font face=3D"monospace">void nd::replay_play(<br>	uhd::rfnoc::replay=
_block_control::sptr replay_ptr, <br>	size_t port,<br>	const uhd::time_spec=
_t start_time<br>){<br>	const std::string ID =3D replay_ptr-&gt;get_block_i=
d().to_string() + &quot;:&quot; + std::to_string(port);<br>	uint64_t rec_ad=
dr =3D replay_ptr-&gt;get_record_offset(port);<br>	uint64_t rec_size =3D re=
play_ptr-&gt;get_record_size(port);<br><br>	UHD_LOGGER_DEBUG(ID) &lt;&lt; &=
quot;Replay Started. Samples: &quot; &lt;&lt; (rec_size/4);<br>	replay_ptr-=
&gt;play(rec_addr, rec_size, port, start_time, true);<br>}<br>/************=
*******************************************/<br><br><br><br><br>/**********=
*********************************************/<br>void nd::replay_stop(<br>=
	uhd::rfnoc::replay_block_control::sptr replay_ptr,<br>	size_t port<br>){<b=
r>	const std::string ID =3D replay_ptr-&gt;get_block_id().to_string() + &qu=
ot;:&quot; + std::to_string(port);<br>	<br>	UHD_LOGGER_DEBUG(ID) &lt;&lt; &=
quot;Replay Stopped&quot;;<br>	replay_ptr-&gt;stop(port);<br>}<br></font><b=
r></div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>

--000000000000ca883005b1b853b1--


--===============8030094372888027441==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8030094372888027441==--

