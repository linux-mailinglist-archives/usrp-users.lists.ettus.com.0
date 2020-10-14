Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5DD28E918
	for <lists+usrp-users@lfdr.de>; Thu, 15 Oct 2020 01:10:05 +0200 (CEST)
Received: from [::1] (port=34088 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kSpuD-0004fh-3D; Wed, 14 Oct 2020 19:10:01 -0400
Received: from mail-oi1-f178.google.com ([209.85.167.178]:43656)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kSpu6-0004K7-Tu
 for usrp-users@lists.ettus.com; Wed, 14 Oct 2020 19:09:54 -0400
Received: by mail-oi1-f178.google.com with SMTP id l85so989404oih.10
 for <usrp-users@lists.ettus.com>; Wed, 14 Oct 2020 16:09:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=PrTxxum2tecKkoFR9QGR2khr2cPqNOPZp1CpOt5tRiM=;
 b=gs1BHh44Ig5zovkK4LNy8A9gAaNvc2JZRrORnRjqIhJEGhLdFRw7E6WcrCPYoowX5q
 rvvpMpRbbYgN5HtFqN9GyTSFXeEoIl39WVH/jfRJIu9FuxjCLMfQo2dCuMrOP3bFiiye
 Eg7FrB/UYVbzbAivSpYW51M1J/Z/I74uWmBMQ29y2whwiaUsmfUSucgMrIFso60jvQ6s
 sx4uRK4MzQM0ERJ3iMSAVIDQz3xAlk9ybf/v/yyPZthFD+U4r7hequ0zwXBCVEsoUUKe
 Mu0mnmEudhmzdzqxWIB+wosYGK+JjyeD3XcVodcU8Ht1sG9Q0bCEtqody+O5+YlkGQve
 i35Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=PrTxxum2tecKkoFR9QGR2khr2cPqNOPZp1CpOt5tRiM=;
 b=V8Cp54shoRrzmJqkhiGrk6t3uIQVGiU5cdIFOA1wfiVFfo3+fI5VwYoVhPmx1XPUVz
 KvkzLVyH3XJYFNsU4+cmqyO5/2nxdtShpAIUVjsqxOyMaPYeUla/U44aDDxZAYimQTvf
 Cp2jje9x83edsmHwi7tw0BWD++BAQW3EMrvjh5T2pNlzxACXaO7zKia2Fa4VUgrGY0nr
 cwOraynUrp+1EvQn53yHfS1VjfLzxrTSOit+9fgVEUe8+iAaTF1k5X1V+KfK5LK7A7qr
 opbr4VijHzlHCPFLI3fIlzlGAPEgYJ7MHrIx8ZCexHpgSQT+qr9EW0Wh6B1EXFiKcqhx
 14VA==
X-Gm-Message-State: AOAM533OYLYdPESsoWbhRbaquqsRuC4k/qc+wm6/ZKazuKg+DI4ObhOC
 y1ww7kgC5auC5aPF5xgPcOlB3640FpsmvSILpVBx4hagetzRhA==
X-Google-Smtp-Source: ABdhPJy1qVom9RfMIQhN8KXb1S1Bh0hpQBX0C5ZTHjaCS2DC6UrxkBB4TDfLHMZFCGOUHIm6krsRhMDR2hPIniKmlaU=
X-Received: by 2002:aca:4085:: with SMTP id n127mr324130oia.33.1602716953602; 
 Wed, 14 Oct 2020 16:09:13 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 14 Oct 2020 19:09:02 -0400
Message-ID: <CAB__hTR_wKawKYJEYyD=yVdcN+UchMbSkhUVtSV5wf71W=K+3g@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Replay block in a bad state UHD-4.0
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
Content-Type: multipart/mixed; boundary="===============6874634284013771061=="
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

--===============6874634284013771061==
Content-Type: multipart/alternative; boundary="000000000000b246c405b1a99ec7"

--000000000000b246c405b1a99ec7
Content-Type: text/plain; charset="UTF-8"

Hi,
I am using the Replay block and I ran into an issue where I have gotten the
Replay block into a bad state which I can't seem to fix short of rebooting
the N310.  The way I know it is in a bad state is that the data playing out
is corrupted.  Although the playout is similar to what it should be, there
are numerous gaps & drops that indicate the corruption.  If I reboot the
N310, the corruption disappears.  I would like to be able to "reset" things
without requiring an N310 reboot.

My custom software controls the Replay block with 3 functions:
replay_store() and replay_play() and replay_stop(), all provided below.  I
don't do anything tricky like trying to store and play simultaneously.  The
replay_store() function is very similar to the
rfnoc_replay_samples_from_file() example with the exception that it doesn't
actually start or stop the playout. This occurs in my other 2 functions.

The way that I get the replay block into a bad state is by failing to call
replay_store() prior to replay_play().  This was a bug in my software that
could occur in some situations (which I have since fixed). After this
happens, I can't produce uncorrupted playouts without rebooting the N310.

Let me know if you have any ideas how I can "reset" the Replay block to
obtain uncorrupted output.
Rob


/*******************************************************/
int nd::replay_store(
uhd::rfnoc::replay_block_control::sptr replay_ptr,
size_t port,
    uhd::tx_streamer::sptr tx_stream,
std::vector<char>& samp_vec,
uint32_t addr
){
const std::string ID = replay_ptr->get_block_id().to_string() + ":" +
std::to_string(port);

// Constants related to the Replay block
const size_t bytes_per_sample = 4; // Complex signed 16-bit is 32 bits per
sample
const size_t samples_per_word = 2; // Number of sc16 samples per 64-bit word
const size_t bytes_per_word = bytes_per_sample*samples_per_word;

size_t num_bytes = samp_vec.size();

// Calculate the number of 64-bit words and samples to replay
size_t words_to_replay = num_bytes / bytes_per_word;
size_t samples_to_replay = words_to_replay * samples_per_word;
uint32_t bytes_to_replay = words_to_replay * bytes_per_word;

if (bytes_to_replay != num_bytes) {
UHD_LOGGER_WARNING(__CLASS_AND_FUNC__) << ID
<< "Replay block requires an even number of samples. Truncating extra
bytes";
}

// Configure a buffer in the on-board memory at address 0 that's equal in
// size to the file we want to play back (rounded down to a multiple of
// 64-bit words). Note that it is allowed to playback a different size or
// location from what was recorded.
    UHD_LOGGER_DEBUG(__CLASS_AND_FUNC__) << ID <<
    ": Configuring memory at addr 0x" << std::hex << addr << std::dec << "
for " << bytes_to_replay << " bytes";
replay_ptr->stop(port); // just in case it is presently playing
replay_ptr->record(addr, bytes_to_replay, port);

// Restart record buffer repeatedly until no new data appears on the Replay
// block's input. This will flush any data that was buffered on the input.
UHD_LOGGER_DEBUG(__CLASS_AND_FUNC__) << ID << ": Restarting record buffer";
auto start_time = std::chrono::steady_clock::now();
while (true)
    {
replay_ptr->record_restart(port);
std::this_thread::sleep_for(std::chrono::milliseconds(20));

uint32_t fullness = replay_ptr->get_record_fullness(port);
if (fullness==0) break;

std::chrono::duration<double> time_diff_s =
std::chrono::steady_clock::now() - start_time;
UHD_LOGGER_DEBUG(__CLASS_AND_FUNC__) << ID
<< ": Time: " << time_diff_s.count() << ": Fullness " << fullness;

if (time_diff_s.count() > 2.0) {
UHD_LOGGER_ERROR(__CLASS_AND_FUNC__) << ID << ": Timeout waiting to flush
record buffer";
return -1;
}
}


///////////////////////////////////////////////////////////////////////////
// Send data to replay (record the data)
UHD_LOGGER_INFO(__CLASS_AND_FUNC__) << ID << ": Sending " <<
samples_to_replay << " samples";

uhd::tx_metadata_t tx_md;
tx_md.start_of_burst = true;
tx_md.end_of_burst   = true;
size_t num_tx_samps  = tx_stream->send(&samp_vec[0], samples_to_replay,
tx_md);

if (num_tx_samps != samples_to_replay) {
UHD_LOGGER_ERROR(__CLASS_AND_FUNC__) << ID << ": Error sending samples: "
<< num_tx_samps << "/" << samples_to_replay;
return -1;
}


///////////////////////////////////////////////////////////////////////////
// Wait for data to be stored in on-board memory

UHD_LOGGER_DEBUG(__CLASS_AND_FUNC__) << ID << ": Waiting for recording to
complete";
start_time = std::chrono::steady_clock::now();
while (true)
{
uint32_t fullness = replay_ptr->get_record_fullness(port);
if (fullness>=bytes_to_replay) break;

std::chrono::duration<double> time_diff_s =
std::chrono::steady_clock::now() - start_time;

UHD_LOGGER_DEBUG(__CLASS_AND_FUNC__) << ID << ": Time: (s): " <<
time_diff_s.count()
<< ": Fullness: " << fullness << " / " << bytes_to_replay;

if (time_diff_s.count() > 2.0) {
UHD_LOGGER_ERROR(__CLASS_AND_FUNC__) << ID << ": Timeout waiting for
recording to complete";
return -1;
}

std::this_thread::sleep_for(std::chrono::milliseconds(1));
}

UHD_LOGGER_INFO(__CLASS_AND_FUNC__) << ID << ": Successfully sent " <<
samples_to_replay << " samples";

return samples_to_replay;
}
/*******************************************************/



/*******************************************************/
void nd::replay_play(
uhd::rfnoc::replay_block_control::sptr replay_ptr,
size_t port,
const uhd::time_spec_t start_time
){
const std::string ID = replay_ptr->get_block_id().to_string() + ":" +
std::to_string(port);
uint64_t rec_addr = replay_ptr->get_record_offset(port);
uint64_t rec_size = replay_ptr->get_record_size(port);

UHD_LOGGER_DEBUG(ID) << "Replay Started. Samples: " << (rec_size/4);
replay_ptr->play(rec_addr, rec_size, port, start_time, true);
}
/*******************************************************/




/*******************************************************/
void nd::replay_stop(
uhd::rfnoc::replay_block_control::sptr replay_ptr,
size_t port
){
const std::string ID = replay_ptr->get_block_id().to_string() + ":" +
std::to_string(port);

UHD_LOGGER_DEBUG(ID) << "Replay Stopped";
replay_ptr->stop(port);
}

--000000000000b246c405b1a99ec7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>I am using the Replay block and I ran into an =
issue where I have gotten the Replay block into a bad state which I can&#39=
;t seem to fix short of rebooting the N310.=C2=A0 The way I know it is in a=
 bad state is that the data playing out is corrupted.=C2=A0 Although the pl=
ayout is similar to what it should be, there are numerous gaps &amp; drops =
that indicate the corruption.=C2=A0 If I reboot the N310, the corruption di=
sappears.=C2=A0 I would like to be able to &quot;reset&quot; things without=
 requiring an N310 reboot.</div><div><br></div><div>My custom software cont=
rols the Replay block with 3 functions: replay_store() and replay_play() an=
d replay_stop(), all provided below.=C2=A0 I don&#39;t do anything tricky l=
ike trying to store and play simultaneously.=C2=A0 The replay_store() funct=
ion is very similar to the rfnoc_replay_samples_from_file() example with th=
e exception that it doesn&#39;t actually start or stop the playout. This oc=
curs in my other 2 functions.</div><div><br></div><div>The way that I get t=
he replay block into a bad state is by failing to call replay_store() prior=
 to replay_play().=C2=A0 This was a bug in my software that could occur in =
some situations (which I have since fixed). After this happens, I can&#39;t=
 produce uncorrupted playouts without rebooting the N310.</div><div><br></d=
iv><div>Let me know if you have any ideas how I can &quot;reset&quot; the R=
eplay block to obtain uncorrupted output.</div><div>Rob</div><div><br></div=
><div><br></div><div><font face=3D"monospace">/****************************=
***************************/</font><br></div><div><font face=3D"monospace">=
int nd::replay_store(<br>	uhd::rfnoc::replay_block_control::sptr replay_ptr=
,<br>	size_t port,<br>=C2=A0 =C2=A0 uhd::tx_streamer::sptr tx_stream,<br>	s=
td::vector&lt;char&gt;&amp; samp_vec,<br>	uint32_t addr<br>){<br>	const std=
::string ID =3D replay_ptr-&gt;get_block_id().to_string() + &quot;:&quot; +=
 std::to_string(port);<br>	<br>	// Constants related to the Replay block<br=
>	const size_t bytes_per_sample =3D 4; // Complex signed 16-bit is 32 bits =
per sample<br>	const size_t samples_per_word =3D 2; // Number of sc16 sampl=
es per 64-bit word<br>	const size_t bytes_per_word =3D bytes_per_sample*sam=
ples_per_word;<br>	<br>	size_t num_bytes =3D samp_vec.size();<br>	<br>	// C=
alculate the number of 64-bit words and samples to replay<br>	size_t words_=
to_replay =3D num_bytes / bytes_per_word;<br>	size_t samples_to_replay =3D =
words_to_replay * samples_per_word;<br>	uint32_t bytes_to_replay =3D words_=
to_replay * bytes_per_word;<br>	<br>	if (bytes_to_replay !=3D num_bytes) {<=
br>		UHD_LOGGER_WARNING(__CLASS_AND_FUNC__) &lt;&lt; ID <br>		&lt;&lt; &quo=
t;Replay block requires an even number of samples. Truncating extra bytes&q=
uot;;<br>	}<br>	<br>	// Configure a buffer in the on-board memory at addres=
s 0 that&#39;s equal in<br>	// size to the file we want to play back (round=
ed down to a multiple of<br>	// 64-bit words). Note that it is allowed to p=
layback a different size or<br>	// location from what was recorded.<br>=C2=
=A0 =C2=A0 UHD_LOGGER_DEBUG(__CLASS_AND_FUNC__) &lt;&lt; ID &lt;&lt;<br>=C2=
=A0 =C2=A0 &quot;: Configuring memory at addr 0x&quot; &lt;&lt; std::hex &l=
t;&lt; addr &lt;&lt; std::dec &lt;&lt; &quot; for &quot; &lt;&lt; bytes_to_=
replay &lt;&lt; &quot; bytes&quot;;<br>	replay_ptr-&gt;stop(port); // just =
in case it is presently playing<br>	replay_ptr-&gt;record(addr, bytes_to_re=
play, port);<br>	<br>	// Restart record buffer repeatedly until no new data=
 appears on the Replay<br>	// block&#39;s input. This will flush any data t=
hat was buffered on the input.<br>	UHD_LOGGER_DEBUG(__CLASS_AND_FUNC__) &lt=
;&lt; ID &lt;&lt; &quot;: Restarting record buffer&quot;;<br>	auto start_ti=
me =3D std::chrono::steady_clock::now();<br>	while (true) <br>=C2=A0 =C2=A0=
 {<br>		replay_ptr-&gt;record_restart(port);<br>		std::this_thread::sleep_f=
or(std::chrono::milliseconds(20));<br>		<br>		uint32_t fullness =3D replay_=
ptr-&gt;get_record_fullness(port);<br>		if (fullness=3D=3D0) break;<br>		<b=
r>		std::chrono::duration&lt;double&gt; time_diff_s =3D std::chrono::steady=
_clock::now() - start_time;<br>		UHD_LOGGER_DEBUG(__CLASS_AND_FUNC__) &lt;&=
lt; ID <br>		&lt;&lt; &quot;: Time: &quot; &lt;&lt; time_diff_s.count() &lt=
;&lt; &quot;: Fullness &quot; &lt;&lt; fullness;<br>		<br>		if (time_diff_s=
.count() &gt; 2.0) {<br>			UHD_LOGGER_ERROR(__CLASS_AND_FUNC__) &lt;&lt; ID=
 &lt;&lt; &quot;: Timeout waiting to flush record buffer&quot;;<br>			retur=
n -1;<br>		}<br>	}<br>	<br>	<br>	//////////////////////////////////////////=
/////////////////////////////////<br>	// Send data to replay (record the da=
ta)<br>	UHD_LOGGER_INFO(__CLASS_AND_FUNC__) &lt;&lt; ID &lt;&lt; &quot;: Se=
nding &quot; &lt;&lt; samples_to_replay &lt;&lt; &quot; samples&quot;;<br>	=
<br>	uhd::tx_metadata_t tx_md;<br>	tx_md.start_of_burst =3D true;<br>	tx_md=
.end_of_burst =C2=A0 =3D true;<br>	size_t num_tx_samps =C2=A0=3D tx_stream-=
&gt;send(&amp;samp_vec[0], samples_to_replay, tx_md);<br>	<br>	if (num_tx_s=
amps !=3D samples_to_replay) {<br>		UHD_LOGGER_ERROR(__CLASS_AND_FUNC__) &l=
t;&lt; ID &lt;&lt; &quot;: Error sending samples: &quot; &lt;&lt; num_tx_sa=
mps &lt;&lt; &quot;/&quot; &lt;&lt; samples_to_replay;<br>		return -1;<br>	=
}<br>	<br>	<br>	///////////////////////////////////////////////////////////=
////////////////<br>	// Wait for data to be stored in on-board memory<br>	<=
br>	UHD_LOGGER_DEBUG(__CLASS_AND_FUNC__) &lt;&lt; ID &lt;&lt; &quot;: Waiti=
ng for recording to complete&quot;;<br>	start_time =3D std::chrono::steady_=
clock::now();<br>	while (true) <br>	{<br>		uint32_t fullness =3D replay_ptr=
-&gt;get_record_fullness(port);<br>		if (fullness&gt;=3Dbytes_to_replay) br=
eak;<br>		<br>		std::chrono::duration&lt;double&gt; time_diff_s =3D std::ch=
rono::steady_clock::now() - start_time;<br><br>		UHD_LOGGER_DEBUG(__CLASS_A=
ND_FUNC__) &lt;&lt; ID &lt;&lt; &quot;: Time: (s): &quot; &lt;&lt; time_dif=
f_s.count()<br>		&lt;&lt; &quot;: Fullness: &quot; &lt;&lt; fullness &lt;&l=
t; &quot; / &quot; &lt;&lt; bytes_to_replay;<br><br>		if (time_diff_s.count=
() &gt; 2.0) {<br>			UHD_LOGGER_ERROR(__CLASS_AND_FUNC__) &lt;&lt; ID &lt;&=
lt; &quot;: Timeout waiting for recording to complete&quot;;<br>			return -=
1;<br>		}<br>		<br>		std::this_thread::sleep_for(std::chrono::milliseconds(=
1));<br>	}<br>	<br>	UHD_LOGGER_INFO(__CLASS_AND_FUNC__) &lt;&lt; ID &lt;&lt=
; &quot;: Successfully sent &quot; &lt;&lt; samples_to_replay &lt;&lt; &quo=
t; samples&quot;;<br>	<br>	return samples_to_replay;<br>}<br>/*************=
******************************************/<br><br><br><br>/***************=
****************************************/</font></div><div><font face=3D"mo=
nospace">void nd::replay_play(<br>	uhd::rfnoc::replay_block_control::sptr r=
eplay_ptr, <br>	size_t port,<br>	const uhd::time_spec_t start_time<br>){<br=
>	const std::string ID =3D replay_ptr-&gt;get_block_id().to_string() + &quo=
t;:&quot; + std::to_string(port);<br>	uint64_t rec_addr =3D replay_ptr-&gt;=
get_record_offset(port);<br>	uint64_t rec_size =3D replay_ptr-&gt;get_recor=
d_size(port);<br><br>	UHD_LOGGER_DEBUG(ID) &lt;&lt; &quot;Replay Started. S=
amples: &quot; &lt;&lt; (rec_size/4);<br>	replay_ptr-&gt;play(rec_addr, rec=
_size, port, start_time, true);<br>}<br>/**********************************=
*********************/<br><br><br><br><br>/********************************=
***********************/<br>void nd::replay_stop(<br>	uhd::rfnoc::replay_bl=
ock_control::sptr replay_ptr,<br>	size_t port<br>){<br>	const std::string I=
D =3D replay_ptr-&gt;get_block_id().to_string() + &quot;:&quot; + std::to_s=
tring(port);<br>	<br>	UHD_LOGGER_DEBUG(ID) &lt;&lt; &quot;Replay Stopped&qu=
ot;;<br>	replay_ptr-&gt;stop(port);<br>}<br></font><br></div><div><br></div=
></div>

--000000000000b246c405b1a99ec7--


--===============6874634284013771061==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6874634284013771061==--

