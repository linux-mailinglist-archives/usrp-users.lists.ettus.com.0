Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 676F118C42E
	for <lists+usrp-users@lfdr.de>; Fri, 20 Mar 2020 01:17:16 +0100 (CET)
Received: from [::1] (port=34142 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jF5Le-0001WM-VE; Thu, 19 Mar 2020 20:17:14 -0400
Received: from mout.gmx.net ([212.227.17.20]:36161)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1jF5LZ-0001Pn-Su
 for usrp-users@lists.ettus.com; Thu, 19 Mar 2020 20:17:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1584663388;
 bh=Q2ofRce6vahvlX4ycnP+iyvwTm3qWPcyFbZQdsi0jx0=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=eFC5lxK9BKjgA/GX5zj1+ViAfz+M5tsl8rDcX8uuNOzigfVhgNc6m6z1yhhMU1d1Q
 lf9b1ZTyA5frgjOPdoBwheBJMscvWB2bx0MhRKeut5xaGMsE9zlDeJ2lKJN285EtpB
 EI942boCUAinpCUkzo1FRRXj/9typxFEhhtvkNn0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [67.216.63.255] ([67.216.63.255]) by web-mail.gmx.net
 (3c-app-gmx-bs55.server.lan [172.19.170.139]) (via HTTP); Fri, 20 Mar 2020
 01:16:28 +0100
MIME-Version: 1.0
Message-ID: <trinity-b354461c-be4f-4e66-9954-c96301c941ae-1584663388615@3c-app-gmx-bs55>
To: "Rob Kossler" <rkossler@nd.edu>
Date: Fri, 20 Mar 2020 01:16:28 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <CAB__hTSojeJRcHo899zVCqXQPA=f+DamUq06TA88xNVWE3SRyg@mail.gmail.com>
References: <CAB__hTT=qkX=vq7tuG9ugXnL57o_YXzig1j1d9Cf3sB-vhzdfg@mail.gmail.com>
 <trinity-c8914290-4845-4675-98c6-2e02b41f536e-1584075584965@3c-app-gmx-bap08>
 <CAB__hTRm4hNPnfX4usHGA-hdc5WZ_=AnHVjJnZj7rGYM8xb0Tw@mail.gmail.com>
 <CAB__hTQOdK3Y3rEbVOGtkS9L-SE2aQ3JkyfueQZAmS_h4ULETg@mail.gmail.com>
 <trinity-f6784e7e-a386-4c2d-9853-5909919d6c1c-1584111163445@3c-app-gmx-bs31>
 <CAB__hTSCG9vJDyfos8Vo51uun6+GVO0z2MKiAnwB5RxbQroHug@mail.gmail.com>
 <trinity-25b958ae-2910-49fd-a252-cca35e698948-1584115895450@3c-app-gmx-bs64>
 <CAB__hTRpVTqng7XcOgrCe5yCYUNZf8ZJVwj-nu8ScZJuf9ctvw@mail.gmail.com>
 <trinity-67ab4cfd-a450-4253-8edf-2d22a808d058-1584575179099@3c-app-gmx-bap69>
 <CAB__hTRoRNft0M8VCFGDS0ytLGbq0Fz48Zych-U5UD3jcutNzA@mail.gmail.com>
 <trinity-bbe82f54-edda-4533-b4c8-9b1bde054edc-1584649222876@3c-app-gmx-bap79>
 <CAB__hTRvq+xojKA0-kB0-JJjOURf9ZLVURcAwyHxtt6_-J1_bg@mail.gmail.com>
 <CAB__hTRZCez=FerC_MUiyDMXoEb4LH+cgHqAUfoE859UUO0POg@mail.gmail.com>
 <CAB__hTTfEYVEQAZvVLfR1GJHyWfz_uwCTDREX+4vsHWHi1MpOw@mail.gmail.com>
 <CAB__hTSojeJRcHo899zVCqXQPA=f+DamUq06TA88xNVWE3SRyg@mail.gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:henBajacMcF3PMaSZfYp/SOluEoYkUz/MFYXb21ovcXUqJye7QH0/T1yW5LM0H9OpE/kn
 QJuLFAy07348u4VR/dB3+mjRMlIn7cICzctYsRnoiQ6WC62gC4pbPiv88eOHeuBG6LW+ABJVprrG
 yIXvp8rEFccfe5TVW9NtEYNydx4qYnQfy5k1PR+zumASEKxt0HL1GqMTbGlvr63rR/EP4NNkiC0h
 cxfGDKvh8kkzoP1ROilHfyF0pkbxivXkRpZ5T5jTU8Ikdy0rsT5pQsA5VuNiKwa3MKDYu9e+DBtt
 2g=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cxo8tPVt6VQ=:JfXTW9MO66j5F8M+mSgIiC
 mCt8wirGWEvW+aC3UrKkFSXKBE/uJN/lf2Qc4//HhcAUAzRVs95DN4zRfD5uJdn+9lqlfKCWj
 1kJGochkpnpA+1vyvSpFwrq6rUYd7C+Hr9jGa2tKVPAdqPj9cyfrTRhPsXuK7Xk+yXi3lgBPn
 6F/EegPaIrVvStClJY9S/fXGRUtXPjQ+s2t9mXey/mdiBe7RjT7TAiziQPSksx4G9Vtrhv78f
 IwoHG11Sl0YdX63ZNAE2MLWdKP8GvlQE0DN8SM9pUINSSMWRpeB6jfOSRHGbSaLhf4+YQknIv
 6V2F1BJDdm3uLpnJvCxo1JLdbLv5HkNMLhyqZb3Ixuu8VXG6x04R6BLTsnFkesZxzwm0jH11D
 QPyXkFTVgka6alZtN8Rxiapa1JBpH+Zl3XmhVEEubRy7dWmOADau7X5riT4chQlhvJdN9TX+c
 u7DtvRzzaNMDE+KGCcfidarlek6ilDhlaWPEOiV9oJVTIRlzgU6UvCwUvb0BbTwspG7M8UcbN
 NDz+Je3tDQSol4COWiSRSlt2Ypo76Z99DGh5A/YKPPm6XHorPd1+DC66hf03fZCml56GG05oO
 hllk2vE817N60J9J09GkzFKRAYuUfpUuxVmhZxrwd0z890Twrr2BoMom0NDUbMMLIyzdNumx/
 WMH9l6XfZAx39GWES9tobk1WvQrtgAjVobY71dJ73iFE9l06tLZwPPTr7PXAC3k9soGA=
Subject: Re: [USRP-users] USRP X310 ignored DSP retuning on TX when using a
 timed command
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
From: Lukas Haase via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lukas Haase <lukashaase@gmx.at>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8710154785551696919=="
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

--===============8710154785551696919==
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div>Hi Rob,</div>

<div>&nbsp;</div>

<div>Sorry I really should have ran the python file before uploading. The issue was that I combined to files into one and forgot to remove the imported file.</div>

<div>Here is a new one (tested): http://paste.ubuntu.com/p/VsGRmsbZQ5/</div>

<div>&nbsp;</div>

<div>&nbsp;</div>

<div>Thanks for reporting your results .... very interesting!</div>

<div>&nbsp;</div>

<div>Why do you think second mode makes sense to you? (assuming you are using timed commands to to retune TX+RX at the same time)</div>

<div>&nbsp;</div>

<div>In general, it seems to me that things are related to streaming start/stop. Maybe things are reset when streaming starts/ends but not when re-tuning?</div>

<div>&nbsp;</div>

<div>Maybe this is what Marcus was mentioning: resetting phase accumulator vs. &quot;increment register is updated with the new phase increment&quot;?</div>

<div>&nbsp;</div>

<div>MAYBE stopping/starting resets the phase accumulator to zero and just timed retuning doesn&#39;t reset anything. But still, my question is left why this would result in a random phase offset between DUC and DDC.</div>

<div>&nbsp;</div>

<div>Thanks again!!</div>

<div>Lukas</div>

<div>&nbsp;
<div>&nbsp;
<div name="quote" style="margin:10px 5px 5px 10px; padding: 10px 0 10px 10px; border-left:2px solid #C3D9E5; word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;">
<div style="margin:0 0 10px 0;"><b>Gesendet:</b>&nbsp;Donnerstag, 19. M&auml;rz 2020 um 19:16 Uhr<br/>
<b>Von:</b>&nbsp;&quot;Rob Kossler&quot; &lt;rkossler@nd.edu&gt;<br/>
<b>An:</b>&nbsp;&quot;Lukas Haase&quot; &lt;lukashaase@gmx.at&gt;<br/>
<b>Cc:</b>&nbsp;&quot;USRP-users@lists.ettus.com&quot; &lt;usrp-users@lists.ettus.com&gt;<br/>
<b>Betreff:</b>&nbsp;Re: [USRP-users] USRP X310 ignored DSP retuning on TX when using a timed command</div>

<div name="quoted-content">
<div>
<div>Lukas,</div>

<div>I installed gnuradio and tried to run but encounter the following.&nbsp; I&#39;m guessing this is your block.</div>

<div>Traceback (most recent call last):<br/>
&nbsp; File &quot;test.py&quot;, line 25, in &lt;module&gt;<br/>
&nbsp; &nbsp; import epy_block_1<br/>
ImportError: No module named epy_block_1</div>

<div>Rob</div>
</div>
&nbsp;

<div class="gmail_quote">
<div class="gmail_attr">On Thu, Mar 19, 2020 at 6:28 PM Rob Kossler &lt;<a href="mailto:rkossler@nd.edu" onclick="parent.window.location.href=&#39;mailto:rkossler@nd.edu&#39;; return false;" target="_blank">rkossler@nd.edu</a>&gt; wrote:</div>

<blockquote class="gmail_quote" style="margin: 0.0px 0.0px 0.0px 0.8ex;border-left: 1.0px solid rgb(204,204,204);padding-left: 1.0ex;">
<div>
<div>Ok.&nbsp; False alarm.&nbsp; I forgot about the dboard clock needing set to 20MHz for RF freq below 1 GHz.&nbsp; When I made this change, now I get consistent Rx-Tx phase for the first mode where both Tx and Rx start/stop at each test.</div>

<div>Rob</div>
</div>
&nbsp;

<div class="gmail_quote">
<div class="gmail_attr">On Thu, Mar 19, 2020 at 6:10 PM Rob Kossler &lt;<a href="mailto:rkossler@nd.edu" onclick="parent.window.location.href=&#39;mailto:rkossler@nd.edu&#39;; return false;" target="_blank">rkossler@nd.edu</a>&gt; wrote:</div>

<blockquote class="gmail_quote" style="margin: 0.0px 0.0px 0.0px 0.8ex;border-left: 1.0px solid rgb(204,204,204);padding-left: 1.0ex;">
<div>
<div>
<div><span style="font-family: arial , sans-serif;">Ok. I modified my code to be more like yours...</span></div>

<div>
<ul>
	<li><span style="font-family: arial , sans-serif;">toggling dsp freq rather than LO freq</span></li>
	<li><span style="font-family: arial , sans-serif;">LO at 900 MHz</span></li>
	<li><span style="font-family: arial , sans-serif;">external connections Tx0 =&gt; Splitter_1x2 =&gt; both Rx0 and Rx1</span></li>
	<li><span style="font-family: arial , sans-serif;">Previously, I was starting / stopping both Rx &amp; Tx in between each test.&nbsp; Now, I added a mode where the Tx is on continuously, and the Rx starts &amp; stops for each test after the dsp freq change</span></li>
</ul>

<div>The results are the following:</div>

<ul>
	<li>In the first mode where both Tx and Rx start/stop at each test, I get consistent group delay (as measured by the correlation peak index) for both Rx-Rx and Rx-Tx.&nbsp; But for phase, the Rx-Rx phase is consistent, but the Rx-Tx phase seems random</li>
	<li>In the second mode where Tx is on continuously and I start/stop Rx after each dsp freq change, the group delay is constant for Rx-Rx but random for Rx-Tx.&nbsp; The phase results are constant for Rx-Rx but random for Rx-Tx.</li>
</ul>

<div>Regarding the 2nd mode, this makes sense to me.&nbsp; But, for the 1st mode, I don&#39;t understand&nbsp;why the Rx-Tx phase seems random. Still thinking about it....</div>

<div>Rob</div>
</div>
</div>
&nbsp;

<div class="gmail_quote">
<div class="gmail_attr">On Thu, Mar 19, 2020 at 4:35 PM Rob Kossler &lt;<a href="mailto:rkossler@nd.edu" onclick="parent.window.location.href=&#39;mailto:rkossler@nd.edu&#39;; return false;" target="_blank">rkossler@nd.edu</a>&gt; wrote:</div>

<blockquote class="gmail_quote" style="margin: 0.0px 0.0px 0.0px 0.8ex;border-left: 1.0px solid rgb(204,204,204);padding-left: 1.0ex;">
<div>
<div>Lukas,</div>

<div>Just before receiving your email, I ran the following with my custom c++ &amp; matlab software using X310/UBX-160 with the connections I described.&nbsp; The following shows the output which is very consistent.&nbsp; I used a 100 tone multi-tone waveform spread over 4 MHz bandwidth (using 5 MS/s sample rate on Tx and Rx).&nbsp; Note the consistency of results as I toggled between 2 frequencies: 2450 and 2460 MHz.</div>

<div>&nbsp;</div>

<div>My method was the following:</div>

<div>
<ul>
	<li>Tx waveform was 500 points long</li>
	<li>Rx capture was 5000 points long</li>
	<li>Compute cross-correlation (using Matlab xcorr) as follows: xcorr(rx0, conj(tx)) AND xcorr(rx0,conj(rx1))</li>
	<li>Find the correlation peak (which was very pronounced) which shows the sample delay between the two signals.&nbsp; Extract the phase at the peak</li>
</ul>

<div>Oops, I just realized that I used a constant DSP freq (10 MHz) and I changed the LO freq in my test.&nbsp; I will try again with moving the DSP freq instead.</div>

<div>Rob</div>
</div>

<div>&nbsp;</div>

<div><span style="font-family: monospace;">Test 1: freq = 2450.0 MHz<br/>
&nbsp; Rx0/Tx0 xcorr peak at index 108 with phase -121.8<br/>
&nbsp; Rx0/Rx1 xcorr peak at index 115 with phase -95.7<br/>
Test 2: freq = 2460.0 MHz<br/>
&nbsp; Rx0/Tx0 xcorr peak at index 108 with phase -58.7<br/>
&nbsp; Rx0/Rx1 xcorr peak at index 115 with phase 13.1<br/>
Test 3: freq = 2450.0 MHz<br/>
&nbsp; Rx0/Tx0 xcorr peak at index 108 with phase -121.7<br/>
&nbsp; Rx0/Rx1 xcorr peak at index 115 with phase -95.8<br/>
Test 4: freq = 2460.0 MHz<br/>
&nbsp; Rx0/Tx0 xcorr peak at index 108 with phase -58.6<br/>
&nbsp; Rx0/Rx1 xcorr peak at index 115 with phase 13.0<br/>
Test 5: freq = 2450.0 MHz<br/>
&nbsp; Rx0/Tx0 xcorr peak at index 108 with phase -121.7<br/>
&nbsp; Rx0/Rx1 xcorr peak at index 115 with phase -95.8<br/>
Test 6: freq = 2460.0 MHz<br/>
&nbsp; Rx0/Tx0 xcorr peak at index 108 with phase -58.8<br/>
&nbsp; Rx0/Rx1 xcorr peak at index 115 with phase 12.7<br/>
Test 7: freq = 2450.0 MHz<br/>
&nbsp; Rx0/Tx0 xcorr peak at index 108 with phase -121.8<br/>
&nbsp; Rx0/Rx1 xcorr peak at index 115 with phase -95.9<br/>
Test 8: freq = 2460.0 MHz<br/>
&nbsp; Rx0/Tx0 xcorr peak at index 108 with phase -58.7<br/>
&nbsp; Rx0/Rx1 xcorr peak at index 115 with phase 12.9<br/>
Test 9: freq = 2450.0 MHz<br/>
&nbsp; Rx0/Tx0 xcorr peak at index 108 with phase -121.8<br/>
&nbsp; Rx0/Rx1 xcorr peak at index 115 with phase -95.8<br/>
Test 10: freq = 2460.0 MHz<br/>
&nbsp; Rx0/Tx0 xcorr peak at index 108 with phase -58.7<br/>
&nbsp; Rx0/Rx1 xcorr peak at index 115 with phase 12.9<br/>
&gt;&gt; </span></div>

<div>&nbsp;</div>
&nbsp;

<div class="gmail_quote">
<div class="gmail_attr">On Thu, Mar 19, 2020 at 4:21 PM Lukas Haase &lt;<a href="mailto:lukashaase@gmx.at" onclick="parent.window.location.href=&#39;mailto:lukashaase@gmx.at&#39;; return false;" target="_blank">lukashaase@gmx.at</a>&gt; wrote:</div>

<blockquote class="gmail_quote" style="margin: 0.0px 0.0px 0.0px 0.8ex;border-left: 1.0px solid rgb(204,204,204);padding-left: 1.0ex;">
<div>
<div style="font-family: Verdana;font-size: 12.0px;">
<div>Hi Rob,</div>

<div>&nbsp;</div>

<div>Yes, I confirm your conclusion.</div>

<div>&nbsp;</div>

<ul>
	<li>I calculate the relative phase by dividing the outputs of both receivers. To understand better, note that I have an additional &quot;IF stage&quot; in my own signal flow such that I exclude DC offset correction etc. the USRP may perform. This is the block diagram of the transmitter part: <a href="https://snipboard.io/YFgIKs.jpg" target="_blank">https://snipboard.io/YFgIKs.jpg</a> . I send &quot;exp(1j*1MHz*t) . This shows the receiver part: <a href="https://snipboard.io/i9jLJg.jpg" target="_blank">https://snipboard.io/i9jLJg.jpg</a> . I multiply the received signal with exp(-1j*1MHz*t) and filter them. Then I divide both streams and take the phase part. I take a moving average (for flucatuations), add pi and display the number.</li>
	<li><span style="font: unset;"><a href="https://snipboard.io/YFgIKs.jpg" target="_blank">https://snipboard.io/YFgIKs.jpg</a></span> <span style="font: unset;"><a href="https://snipboard.io/YFgIKs.jpg" target="_blank">https://snipboard.io/YFgIKs.jpg</a></span> <span style="font: unset;"><a href="https://snipboard.io/YFgIKs.jpg" target="_blank">https://snipboard.io/YFgIKs.jpg</a></span> That&#39;s so nice, thank you!! My code is here: <a href="http://paste.ubuntu.com/p/MbCJfPGzYW/" target="_blank">http://paste.ubuntu.com/p/MbCJfPGzYW/</a> . I&#39;m not sure if you have gnuradio(and QT) installed but if yes, simply &quot;python2 switch_on_click.py&quot; should do. Let me quickly elaborate how it works:
	<ul>
		<li>Class &quot;switch_on_click&quot; implements a normal gnuradio flow with USRP transmitter and receiver.</li>
		<li>It also uses a custom module together with buttons and a probe block to call functions upon clicking on a button</li>
		<li>The callback functions are defined in class &quot;blk&quot;</li>
		<li>The most important is &quot;def button_rtx_handler&quot; on line 106 which is executed when user clicks on button &quot;Switch RTX (together)&quot;</li>
	</ul>
	</li>
	<li>Again, thank you for trying this out!! If it works, would you mind sharing this code then? I may be able to check then where it breaks on my system</li>
	<li>I use 900 MHz as default center frequency (and &quot;rf_freq&quot;). When clicking, I jump between dsp_freq=0 and dsp_freq=500e3. As to my waveform, you can infer from my screenshots and code above: I am transmitting and receiving a 1MHz waveform (which acts as an additional &quot;IF stage&quot;). The received signal is then downconcerted from 1MHz to DC. I use 5 MSsps sampling rate.</li>
</ul>

<div>
<div>&nbsp;</div>

<div>Again, thank you SO much.</div>

<div>&nbsp;</div>

<div>Best,</div>

<div>Lukas</div>

<div>&nbsp;</div>

<div>&nbsp;
<div style="margin: 10.0px 5.0px 5.0px 10.0px;padding: 10.0px 0.0px 10.0px 10.0px;border-left: 2.0px solid rgb(195,217,229);">
<div style="margin: 0.0px 0.0px 10.0px;"><b>Gesendet:</b>&nbsp;Donnerstag, 19. M&auml;rz 2020 um 10:43 Uhr<br/>
<b>Von:</b>&nbsp;&quot;Rob Kossler&quot; &lt;<a href="mailto:rkossler@nd.edu" onclick="parent.window.location.href=&#39;mailto:rkossler@nd.edu&#39;; return false;" target="_blank">rkossler@nd.edu</a>&gt;<br/>
<b>An:</b>&nbsp;&quot;Lukas Haase&quot; &lt;<a href="mailto:lukashaase@gmx.at" onclick="parent.window.location.href=&#39;mailto:lukashaase@gmx.at&#39;; return false;" target="_blank">lukashaase@gmx.at</a>&gt;<br/>
<b>Cc:</b>&nbsp;&quot;<a href="mailto:USRP-users@lists.ettus.com" onclick="parent.window.location.href=&#39;mailto:USRP-users@lists.ettus.com&#39;; return false;" target="_blank">USRP-users@lists.ettus.com</a>&quot; &lt;<a href="mailto:usrp-users@lists.ettus.com" onclick="parent.window.location.href=&#39;mailto:usrp-users@lists.ettus.com&#39;; return false;" target="_blank">usrp-users@lists.ettus.com</a>&gt;<br/>
<b>Betreff:</b>&nbsp;Re: [USRP-users] USRP X310 ignored DSP retuning on TX when using a timed command</div>

<div>
<div>
<div>Hi Lukas,
<div>So, the conclusion is that your Rx0-to-Rx1 relative phase is nearly constant such that it seems that both Rx0/Rx1 are phase coherent and Tx0/Tx1 are phase coherent.&nbsp; But, phase from Tx-to-Rx is random.&nbsp; Please correct me if that is wrong.&nbsp;&nbsp;</div>

<div>&nbsp;</div>

<div>I have a few comments:</div>

<div>
<ul>
	<li>How do you measure/calculate the relative phase?</li>
	<li>Can you send me the full Python code to look at?&nbsp; As I mentioned previously, I am not too good at gnuradio/Python, but I might be able to spot something.</li>
	<li>As to your question, I always use synchronous measurements.&nbsp; And, I&#39;m confident that my Rx-to-Rx phase is coherent.&nbsp; But, I haven&#39;t really looked at Tx-to-Rx in a while so I will do so later today.&nbsp; Here are the steps I plan to take:
	<ol>
		<li>Connect Tx0 to Rx1.&nbsp; Note that there is a pretty strong leakage signal from Tx0 to Rx0 so I don&#39;t really need to provide a physical connection in order to get a signal on Rx0.&nbsp; The signal attenuation in this leakage path is approx 40 dB so it is not too much different than the signal level I will receive on Rx1 if I use an external 30 dB attenuator.</li>
		<li>Set Rx and Tx frequency to freq 1</li>
		<li>Measure and note the relative phase for Rx0/Tx0 and Rx1/Tx0 for freq 1</li>
		<li>Set Rx and Tx frequency to freq 2</li>
		<li>Measure and note the relative phase for Rx0/Tx0 and Rx1/Tx0 for freq 2</li>
		<li>Repeat steps 2-5 a few times to ensure that the measurements are repeatable</li>
	</ol>
	</li>
	<li>Questions: what should I use for freq 1 and freq 2?&nbsp; What waveform are you transmitting?&nbsp; What sample rates for Tx and Rx?</li>
</ul>

<div>Rob</div>
</div>

<div>&nbsp;</div>
</div>

<div>
<div>&nbsp;</div>
&nbsp;

<div class="gmail_quote">
<div class="gmail_attr">On Wed, Mar 18, 2020 at 7:47 PM Lukas Haase via USRP-users &lt;<a href="mailto:usrp-users@lists.ettus.com" onclick="parent.window.location.href=&#39;mailto:usrp-users@lists.ettus.com&#39;; return false;" target="_blank">usrp-users@lists.ettus.com</a>&gt; wrote:</div>

<blockquote class="gmail_quote" style="margin: 0.0px 0.0px 0.0px 0.8ex;border-left: 1.0px solid rgb(204,204,204);padding-left: 1.0ex;">
<div>
<div style="font-family: Verdana;font-size: 12.0px;">
<div>Hi Rob,</div>

<div>&nbsp;</div>

<div>I think the issue is really having two usrp_multi devices with timed commands and same timestmap or similar. From your tests below:</div>

<div>&nbsp;</div>

<div>1.) I can <b>confirm </b>that the relative phase between two RX in your suggested test is always the same! In fact, it is always 4.56 rad, even across restarts and for different frequencies! That somewhat makes sense because the phase offset is now only dependent on the difference between the two channels (fixed) and cable lengths from the splitter (fixed). I verified by removing the timed command on usrp source, the phase offset becomes random after each retune. Of course, this is independent of TX tuning (timed vs. not). For reference, this is the code used:</div>

<div>&nbsp;</div>

<div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_rx = uhd.tune_request()<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_rx.rf_freq_policy = uhd.tune_request.POLICY_NONE<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_rx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_rx.dsp_freq = -dsp_freq</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_tx = uhd.tune_request()<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_tx.rf_freq_policy = uhd.tune_request.POLICY_NONE<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_tx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_tx.dsp_freq = dsp_freq</div>

<div>&nbsp;</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; now = usrp_sink.get_time_now()<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; when = now + uhd.time_spec(1.0)</div>
&nbsp;

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp_sink.set_command_time(when)<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp_source.set_command_time(when)</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res1 = usrp_sink.set_center_freq(tune_req_tx)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # TX<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res2 = usrp_source.set_center_freq(tune_req_rx, 0)&nbsp; #RX1<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res3 = usrp_source.set_center_freq(tune_req_rx, 1)&nbsp; #RX2</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp_sink.clear_command_time()<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp_source.clear_command_time()</div>
</div>

<div>&nbsp;
<div>
<div>2.) I also tried your second suggestion. Before reading on, you wanna guess what the outcome is?</div>

<div>I connected &quot;TX/RX&quot; to &quot;RX2&quot; on UBX #1 (TX1 --&gt; RX1) and &quot;TX/RX&quot; to &quot;RX2&quot; on UBX #2 (TX2 --&gt; RX2). In absence of a second 30dB attenuator I used two antennas closely spaced together. For reference, my code looks now like:</div>

<div>&nbsp;</div>

<div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_rx = uhd.tune_request()<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_rx.rf_freq_policy = uhd.tune_request.POLICY_NONE<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_rx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_rx.dsp_freq = -dsp_freq</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_tx = uhd.tune_request()<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_tx.rf_freq_policy = uhd.tune_request.POLICY_NONE<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_tx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_tx.dsp_freq = dsp_freq</div>

<div>&nbsp;</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; now = usrp_sink.get_time_now()<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; when = now + uhd.time_spec(1.0)</div>
&nbsp;

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp_sink.set_command_time(when)<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp_source.set_command_time(when)</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res1 = usrp_sink.set_center_freq(tune_req_tx, 0)&nbsp; &nbsp;&nbsp; # TX1<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res2 = usrp_sink.set_center_freq(tune_req_tx, 1)&nbsp;&nbsp;&nbsp;&nbsp; # TX2<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res3 = usrp_source.set_center_freq(tune_req_rx, 0) # RX1<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res4 = usrp_source.set_center_freq(tune_req_rx, 1) # RX2</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp_sink.clear_command_time()<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp_source.clear_command_time()</div>
</div>

<div>&nbsp;</div>

<div>I again look at the <b>relative phase</b> of RX1 and RX2 (obtained by dividing the two) and guess what: Also now the relative phase stays constant! (This time it actually slightly varies from 3.0 rad to 3.7 rad between two different frequencies).</div>

<div>What does that mean? I think it means that TX must be tuned coherently and RX must be tuned coherently, i.e., timed commands generally work for multiple TX&#39;s and multiple RX&#39;s <b>individually</b>. Do I get that right?</div>

<div>&nbsp;</div>

<div>What doesn&#39;t seem to work is RX+TX <b>together</b>.</div>

<div>&nbsp;</div>

<div>I am very desperately asking if you had coherent TX+RX setup working at any point or know somebody who did. It would be so much worth to know if this is something that never worked to begin with or if I&#39;m just doing something wrong. On the other hand I don&#39;t want to believe being the only person on the planet having tried TX+RX phase coherent operation :-/</div>

<div>&nbsp;</div>
Any other further suggestions on how to continue debugging with the above in mind would be helpful too.

<div>&nbsp;</div>

<div>In my opinion there are two options left:</div>

<div>1.) There is still a nondeterministic delay between the TX and RX timed commands (to my understanding, even a constant delay would result in coherent phase)</div>

<div>2.) While the phase accumulators in RX are set to the same values (and in TX as well), they may be set to a different, random value.</div>

<div>&nbsp;</div>

<div>However, I don&#39;t really know how to test these.</div>

<div>&nbsp;</div>

<div>Thanks,</div>

<div>Lukas</div>

<div>&nbsp;</div>

<div>&nbsp;</div>

<div style="margin: 10.0px 5.0px 5.0px 10.0px;padding: 10.0px 0.0px 10.0px 10.0px;border-left: 2.0px solid rgb(195,217,229);">
<div style="margin: 0.0px 0.0px 10.0px;"><b>Gesendet:</b>&nbsp;Freitag, 13. M&auml;rz 2020 um 12:27 Uhr<br/>
<b>Von:</b>&nbsp;&quot;Rob Kossler&quot; &lt;<a href="mailto:rkossler@nd.edu" onclick="parent.window.location.href=&#39;mailto:rkossler@nd.edu&#39;; return false;" target="_blank">rkossler@nd.edu</a>&gt;<br/>
<b>An:</b>&nbsp;&quot;Lukas Haase&quot; &lt;<a href="mailto:lukashaase@gmx.at" onclick="parent.window.location.href=&#39;mailto:lukashaase@gmx.at&#39;; return false;" target="_blank">lukashaase@gmx.at</a>&gt;<br/>
<b>Cc:</b>&nbsp;&quot;Marcus D Leech&quot; &lt;<a href="mailto:patchvonbraun@gmail.com" onclick="parent.window.location.href=&#39;mailto:patchvonbraun@gmail.com&#39;; return false;" target="_blank">patchvonbraun@gmail.com</a>&gt;, &quot;<a href="mailto:USRP-users@lists.ettus.com" onclick="parent.window.location.href=&#39;mailto:USRP-users@lists.ettus.com&#39;; return false;" target="_blank">USRP-users@lists.ettus.com</a>&quot; &lt;<a href="mailto:usrp-users@lists.ettus.com" onclick="parent.window.location.href=&#39;mailto:usrp-users@lists.ettus.com&#39;; return false;" target="_blank">usrp-users@lists.ettus.com</a>&gt;<br/>
<b>Betreff:</b>&nbsp;Re: [USRP-users] USRP X310 ignored DSP retuning on TX when using a timed command</div>

<div>
<div>
<div>Ok, great.&nbsp; I am trying to think of ways to now add the phase measurement.&nbsp; Ideas...</div>

<div>
<ul>
	<li>In order to get consistent phase, you would need to tune Rx and Tx DSP at the same time (rather than below where you are only tuning one of them).&nbsp; So, assuming that this will not produce consistent phase results, then maybe try the following idea...</li>
	<li>If you want to check just Rx DSP tuning (with fixed Tx DSP tuning), you could try a 2 channel Rx measurement where the Tx is split externally with 1:2 splitter in order to drive both Rx0 and Rx1.&nbsp; Then, measure the relative phase Rx0/Rx1 and then tune back and forth between two Rx DSP freqs to see if the relative phase on Rx remains constant.&nbsp; If so, this would give you good confidence that Rx DSP tuning is indeed happening synchronously</li>
	<li>Assuming that the Rx IS synchronous in the step above (perhaps a bad assumption, but here goes), you could then check TX DSP tuning (with fixed Rx DSP tuning) by using two Tx and two Rx channels with Tx0 connected to Rx0 and Tx1 connected to Rx1.&nbsp; At this point we are confident that Rx DSP tuning is synchronous so any synchronous misbehavior would imply a Tx sync problem.</li>
</ul>

<div>Sorry I can&#39;t think of better ideas.&nbsp;&nbsp;</div>

<div>Rob</div>
</div>
&nbsp;

<div class="gmail_quote">
<div class="gmail_attr">On Fri, Mar 13, 2020 at 12:12 PM Lukas Haase &lt;<a href="mailto:lukashaase@gmx.at" onclick="parent.window.location.href=&#39;mailto:lukashaase@gmx.at&#39;; return false;" target="_blank">lukashaase@gmx.at</a>&gt; wrote:</div>

<blockquote class="gmail_quote" style="margin: 0.0px 0.0px 0.0px 0.8ex;border-left: 1.0px solid rgb(204,204,204);padding-left: 1.0ex;">Hi Rob,<br/>
<br/>
1.) yes, works(*)<br/>
2.) yes, works(*)<br/>
<br/>
(*): qualitatively. I set the timed command to &quot;get_current_time() + uhd.time_spec(2.0)&quot; and I see the chance 2 seconds after my click on the screen. I cannot (do not know how) check if it actually happens at sample-precicse location.<br/>
<br/>
Great, any ideas to simplify the setup would nice. I just don&#39;t know how I could continue to debugging the phase.<br/>
<br/>
Best,<br/>
Luke<br/>
<br/>
<br/>
Gesendet:&nbsp;Freitag, 13. M&auml;rz 2020 um 11:08 Uhr<br/>
Von:&nbsp;&quot;Rob Kossler&quot; &lt;<a href="mailto:rkossler@nd.edu" onclick="parent.window.location.href=&#39;mailto:rkossler@nd.edu&#39;; return false;" target="_blank">rkossler@nd.edu</a>&gt;<br/>
An:&nbsp;&quot;Lukas Haase&quot; &lt;<a href="mailto:lukashaase@gmx.at" onclick="parent.window.location.href=&#39;mailto:lukashaase@gmx.at&#39;; return false;" target="_blank">lukashaase@gmx.at</a>&gt;<br/>
Cc:&nbsp;&quot;Marcus D Leech&quot; &lt;<a href="mailto:patchvonbraun@gmail.com" onclick="parent.window.location.href=&#39;mailto:patchvonbraun@gmail.com&#39;; return false;" target="_blank">patchvonbraun@gmail.com</a>&gt;, &quot;<a href="mailto:USRP-users@lists.ettus.com" onclick="parent.window.location.href=&#39;mailto:USRP-users@lists.ettus.com&#39;; return false;" target="_blank">USRP-users@lists.ettus.com</a>&quot; &lt;<a href="mailto:usrp-users@lists.ettus.com" onclick="parent.window.location.href=&#39;mailto:usrp-users@lists.ettus.com&#39;; return false;" target="_blank">usrp-users@lists.ettus.com</a>&gt;<br/>
Betreff:&nbsp;Re: [USRP-users] USRP X310 ignored DSP retuning on TX when using a timed command<br/>
<br/>
Thanks Lukas,<br/>
I wanted to confirm that you did not have an older version of FPGA firmware because there was a DDC/DUC bug fix[<a href="https://github.com/EttusResearch/fpga/commit/0b2364653405612a6d5dfaa0e69b1c6798771e6d" target="_blank">https://github.com/EttusResearch/fpga/commit/0b2364653405612a6d5dfaa0e69b1c6798771e6d</a>] related to phase.&nbsp; However, the version you provided with uhd_usrp_probe confirms that you have the bug fix included.&nbsp; So, this is not the problem.&nbsp;<br/>
&nbsp;<br/>
From what you said, I assume that you can successfully do the following:<br/>
1) with Rx tuning fixed (no re-tuning at all), tune Tx DSP only (do not change TX RF) and you can see the frequency change at the specified command time (i.e., if you specify the command time 1 sec in the future, the change does not occur until 1 sec in the future).<br/>
2) opposite of #1: with Tx tuning fixed, tune Rx DSP only and you can see the frequency change at the specified command time.<br/>
&nbsp;<br/>
I am trying to simplify the issue by removing RF tuning completely and by tuning only 1 of Rx/Tx at a time.&nbsp; Perhaps this will help lead to the answer.<br/>
Rob<br/>
&nbsp;<br/>
&nbsp;&nbsp;<br/>
<br/>
On Fri, Mar 13, 2020 at 10:53 AM Lukas Haase &lt;<a href="mailto:lukashaase@gmx.at" onclick="parent.window.location.href=&#39;mailto:lukashaase@gmx.at&#39;; return false;" target="_blank">lukashaase@gmx.at</a>[mailto:<a href="mailto:lukashaase@gmx.at" onclick="parent.window.location.href=&#39;mailto:lukashaase@gmx.at&#39;; return false;" target="_blank">lukashaase@gmx.at</a>]&gt; wrote:Hi again Rob,<br/>
<br/>
Yes, I confirm:<br/>
<br/>
1.) Finally I get the commands to execute at the same time (TX and RX individually and both at the same time)<br/>
2.) Yes, the phase is random after each retune, even when I retune back to the same frequency<br/>
3.) (2) is only true if it includes *DSP* retuning. With naalog retuning (+integer-N retuning) I get phase coherence, as expected.<br/>
<br/>
I actually expected the PLL retuning much more challenging than the DSP retuning but for some reason it seems to be the opposite...<br/>
<br/>
Thanks,<br/>
Lukas<br/>
&nbsp;<br/>
&nbsp;&nbsp;<br/>
&nbsp;</blockquote>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
_______________________________________________<br/>
USRP-users mailing list<br/>
<a href="mailto:USRP-users@lists.ettus.com" onclick="parent.window.location.href=&#39;mailto:USRP-users@lists.ettus.com&#39;; return false;" target="_blank">USRP-users@lists.ettus.com</a><br/>
<a href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></blockquote>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</blockquote>
</div>
</div>
</blockquote>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</div></div></body></html>


--===============8710154785551696919==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8710154785551696919==--
