Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AD960F657
	for <lists+usrp-users@lfdr.de>; Thu, 27 Oct 2022 13:38:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 95F8738192B
	for <lists+usrp-users@lfdr.de>; Thu, 27 Oct 2022 07:38:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666870692; bh=lV6STMPWmaVmycrpnMAnaOklYV9A0npJhj/ohMIKW1U=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=majnMxTU4f72u93bRHEn1fMahHnWuqAeaoZIFN1MzM7xKx0OeHL/S6yMWTHo+j4sL
	 FUcO5Q+HvJfQK5CbNdpgSeL+gn1HHrYiW711wOEK49C5VRwXihjBU9x0nh2/hpIsqV
	 kyHn1Ld+IhE7Na2YRzxqWi8rjgHjoSbVb8VWBwHiFER+kiMvLJN2viD81N2383HyRl
	 Xmdq4/7dqrq8NBd8TA6/zsMRcjWtIF/3t7jetzYRip+PuMtY5zRX53avrpHvm+t5wR
	 yaGz96HRMUSL+S/EgTKmceRpjGRvoAdBzEKBD4D2daZ2Z0CRCAJInuQnAevZ/ok+Vr
	 Yl7H3GmvHpbfg==
Received: from smtp-relay-2.sys.kth.se (smtp-relay-2.sys.kth.se [130.237.32.40])
	by mm2.emwd.com (Postfix) with ESMTPS id 1608B380D5C
	for <usrp-users@lists.ettus.com>; Thu, 27 Oct 2022 07:36:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=kth.se header.i=@kth.se header.b="AkK5+USt";
	dkim-atps=neutral
Received: from exdb4.ug.kth.se (exdb4.ug.kth.se [192.168.32.59])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp-relay-2.sys.kth.se (Postfix) with ESMTPS id 4MykCZ4scczPMdW
	for <usrp-users@lists.ettus.com>; Thu, 27 Oct 2022 13:36:26 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp-relay-2.sys.kth.se 4MykCZ4scczPMdW
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kth.se; s=default;
	t=1666870587; bh=wiR+QwfRSKhAiGXJqZE+xSptg/TAN6OZ7x4RnrvWpOM=;
	h=From:To:Subject:Date:From;
	b=AkK5+UStohVRqOZolDnMhrxEDU57euNYqhze1xcaAaBmv+ZE0wuW7E9S/C+z0HMKB
	 1lksjRmzOktO7ZY8aZnGN5L7pGDUlpz5yM9Mn5wmHjo33lk6M77WWP1geEyvM/ypf6
	 R9WfuOs6j1V8EOJ3IUI2TNN+0m6Xybxjo35y8F54=
Received: from exdb6.ug.kth.se (192.168.32.61) by exdb4.ug.kth.se
 (192.168.32.59) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.15; Thu, 27 Oct
 2022 13:36:26 +0200
Received: from exdb6.ug.kth.se ([192.168.32.61]) by exdb6.ug.kth.se
 ([192.168.32.61]) with mapi id 15.02.1118.015; Thu, 27 Oct 2022 13:36:26
 +0200
From: Marco Spanghero <marcosp@kth.se>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRP N210 C API stream SC16
Thread-Index: AQHY6fhYSJnz1UtD8kOGjdG7R6904A==
Date: Thu, 27 Oct 2022 11:36:26 +0000
Message-ID: <76da335236934c9a94b1213673509b88@kth.se>
Accept-Language: en-US, it-IT, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.32.250]
MIME-Version: 1.0
X-Spam-Status: No, score=0.5 required=5.0 tests=BAYES_20,HTML_MESSAGE,KTH_PHISHING_CONFIRM,SPF_HELO_NONE shortcircuit=no autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on smtp-relay-2.sys.kth.se
Message-ID-Hash: 6J4CZC7IXXAVDJ3S3C7PFBKHGALP2VUW
X-Message-ID-Hash: 6J4CZC7IXXAVDJ3S3C7PFBKHGALP2VUW
X-MailFrom: marcosp@kth.se
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP N210 C API stream SC16
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6J4CZC7IXXAVDJ3S3C7PFBKHGALP2VUW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6091115922743004332=="

--===============6091115922743004332==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_76da335236934c9a94b1213673509b88kthse_"

--_000_76da335236934c9a94b1213673509b88kthse_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,
I am currently facing a problem using the C API with a USRP N210 r4. I am t=
rying to stream a int16_t interleave IQ file. When using the included C++ t=
x_samples_from_file demo, the baseband is streamed without interruptions or=
 other issues. The BB is received at the DUT and the symbols seem correct.

Unfortunately, integration with a bigger software requires usage of the C A=
PI. What is unclear is how does the C and C++ API compare in handling the s=
amples? Seems to me there is no direct mapping between the std::complex<sho=
rt> and interleaved int16_t for IQ. When analyzed with a spectrum analyzer,=
 the baseband streamed look completely different.

Details on the implemented functions and problem:
Issue Description
I am using the C API to stream a binary data file. The file is saved as int=
erleaved int16_t [I][Q] samples. I am using an N210r4 with the latest UHD a=
nd fpga image. MTU on the NIC is configured at 3000, buffer size is 10000 s=
amples. The same file, when streamed with the included tx_samples_from_file=
 example works fine and the baseband is received correctly. When the equiva=
lent code is written in C, the baseband is not correct.

Setup Details
Implemented C code streaming loop:

while (1) {
        if (stop_signal_called)
         break;

        uhd_tx_metadata_make(&md, false, 0, 0.1, false, false);
        size_t read =3D fread(buff, sizeof(int16_t), samps_per_buff, file);
        for(int i =3D 0; i < read; i++){
            printf("%d \n", buff[i]);
        }

        if(read > 0){
            uhd_tx_streamer_send(tx_streamer, buffs_ptr, read, &md, 0.1, &n=
um_samps_sent);
            total_num_samps +=3D num_samps_sent;
        }
        else
            break;
        if (verbose)
            printf("\n Sent %ld - from file %ld\n ", total_num_samps, read)=
;
    }
buff containes the data block to stream and is defined as buff =3D malloc(s=
amps_per_buff*sizeof(int16_t));

C metadata

uhd_stream_args_t stream_args =3D {
        .cpu_format    =3D "sc16",
        .otw_format    =3D "sc16",
        .args               =3D "",
        .channel_list   =3D 0,
        .n_channels   =3D 1};

Reference C++ streaming loop:

void send_from_file(
    uhd::tx_streamer::sptr tx_stream, const std::string& file, size_t samps=
_per_buff)
{
    uhd::tx_metadata_t md;
    md.start_of_burst =3D false;
    md.end_of_burst   =3D false;
    std::vector<samp_type> buff(samps_per_buff);
    std::ifstream infile(file.c_str(), std::ifstream::binary);

    // loop until the entire file has been read

    while (not md.end_of_burst and not stop_signal_called) {
        infile.read((char*)&buff.front(), buff.size() * sizeof(samp_type));
        size_t num_tx_samps =3D size_t(infile.gcount() / sizeof(samp_type))=
;

        md.end_of_burst =3D infile.eof();

        const size_t samples_sent =3D tx_stream->send(&buff.front(), num_tx=
_samps, md);
        if (samples_sent !=3D num_tx_samps) {
            UHD_LOG_ERROR("TX-STREAM",
                "The tx_stream timed out sending " << num_tx_samps << " sam=
ples ("
                                                   << samples_sent << " sen=
t).");
            return;
        }
    }

    infile.close();
}
Reference C++ metadata

uhd::stream_args_t stream_args("sc16", "sc16");
channel_nums.push_back(boost::lexical_cast<size_t>(channel));
stream_args.channels             =3D 0;
uhd::tx_streamer::sptr tx_stream =3D usrp->get_tx_stream(stream_args);
Expected Behavior
I would expect the two samples to perform exactly the same. The baseband sh=
ould be identical

Actual Behaviour
Once shown on a spectrum analyzer, the C example shows a much larger gain a=
n the baseband appears fragmented. I don't understand how the C api handles=
 the buffer streaming. According to the code the C function wraps the exact=
 same behavior of the send call.

Steps to reproduce the problem
I can provide source code for the two examples and binary file. Both sample=
s are executed at 2.5Msps

Question
What am I missing here to correctly stream the baseband? My understanding i=
s that once the data type is fixed in the streaming metadata, we call uhd_t=
x_streamer_send with the number of samples that we want to stream (which is=
 what the C++ example does using as type std::complex<short>. In the C case=
, how do we achieve the same behavior?

I would really appreciate any support in this matter.

Best regards
Marco Spanghero


--_000_76da335236934c9a94b1213673509b88kthse_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p><span style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &=
quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &=
quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-s=
ize: 16px;">Hi,&nbsp;</span></p>
<div style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;">
I am currently facing a problem using the C API with a USRP N210 r4. I am t=
rying to stream a int16_t interleave IQ file. When using the included C&#43=
;&#43; tx_samples_from_file demo, the baseband is streamed without interrup=
tions or other issues. The BB is received
 at the DUT and the symbols seem correct.&nbsp;</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;">
Unfortunately, integration with a bigger software requires usage of the C A=
PI. What is unclear is how does the C and C&#43;&#43; API compare in handli=
ng the samples? Seems to me there is no direct mapping between the std::com=
plex&lt;short&gt; and interleaved int16_t for
 IQ. When analyzed with a spectrum analyzer, the baseband streamed look com=
pletely different.&nbsp;</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;">
Details on the implemented functions and problem:</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;">
<div>Issue Description</div>
<div>I am using the C API to stream a binary data file. The file is saved a=
s interleaved int16_t [I][Q] samples. I am using an N210r4 with the latest =
UHD and fpga image. MTU on the NIC is configured at 3000, buffer size is 10=
000 samples. The same file, when
 streamed with the included tx_samples_from_file example works fine and the=
 baseband is received correctly. When the equivalent code is written in C, =
the baseband is not correct.</div>
<div><br>
</div>
<div><b>Setup Details</b></div>
<div><u>Implemented C code streaming loop:</u></div>
<div><br>
</div>
<div>while (1) {</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; if (stop_signal_called)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;break;</div>
<div><br>
</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; uhd_tx_metadata_make(&amp;md, false, 0, 0.=
1, false, false);</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; size_t read =3D fread(buff, sizeof(int16_t=
), samps_per_buff, file);</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; for(int i =3D 0; i &lt; read; i&#43;&#43;)=
{</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; printf(&quot;%d \n&quot;, bu=
ff[i]);</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; }</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; if(read &gt; 0){</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; uhd_tx_streamer_send(tx_stre=
amer, buffs_ptr, read, &amp;md, 0.1, &amp;num_samps_sent);</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; total_num_samps &#43;=3D num=
_samps_sent;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; }</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; else</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; break;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; if (verbose)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; printf(&quot;\n Sent %ld - f=
rom file %ld\n &quot;, total_num_samps, read);</div>
<div>&nbsp; &nbsp; }</div>
<div>buff containes the data block to stream and is defined as buff =3D mal=
loc(samps_per_buff*sizeof(int16_t));</div>
<div><br>
</div>
<div><u>C metadata</u></div>
<div><br>
</div>
<div>uhd_stream_args_t stream_args =3D {</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; .cpu_format&nbsp; &nbsp; =3D &quot;sc16&qu=
ot;,&nbsp;&nbsp;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; .otw_format&nbsp; &nbsp; =3D &quot;sc16&qu=
ot;,&nbsp;&nbsp;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; .args&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;=3D &quot;&quot;,&nbsp;&nbsp;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; .channel_list&nbsp; &nbsp;=3D 0,&nbsp;&nbs=
p;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; .n_channels&nbsp; &nbsp;=3D 1};</div>
<div><br>
</div>
<div><u>Reference C&#43;&#43; streaming loop:</u></div>
<div><br>
</div>
<div>void send_from_file(</div>
<div>&nbsp; &nbsp; uhd::tx_streamer::sptr tx_stream, const std::string&amp;=
 file, size_t samps_per_buff)</div>
<div>{</div>
<div>&nbsp; &nbsp; uhd::tx_metadata_t md;</div>
<div>&nbsp; &nbsp; md.start_of_burst =3D false;</div>
<div>&nbsp; &nbsp; md.end_of_burst&nbsp; &nbsp;=3D false;</div>
<div>&nbsp; &nbsp; std::vector&lt;samp_type&gt; buff(samps_per_buff);</div>
<div>&nbsp; &nbsp; std::ifstream infile(file.c_str(), std::ifstream::binary=
);&nbsp;</div>
<div><br>
</div>
<div>&nbsp; &nbsp; // loop until the entire file has been read</div>
<div><br>
</div>
<div>&nbsp; &nbsp; while (not md.end_of_burst and not stop_signal_called) {=
</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; infile.read((char*)&amp;buff.front(), buff=
.size() * sizeof(samp_type));</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; size_t num_tx_samps =3D size_t(infile.gcou=
nt() / sizeof(samp_type));</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; md.end_of_burst =3D infile.eof();</div>
<div><br>
</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; const size_t samples_sent =3D tx_stream-&g=
t;send(&amp;buff.front(), num_tx_samps, md);</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; if (samples_sent !=3D num_tx_samps) {</div=
>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; UHD_LOG_ERROR(&quot;TX-STREA=
M&quot;,</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &quot;The tx_s=
tream timed out sending &quot; &lt;&lt; num_tx_samps &lt;&lt; &quot; sample=
s (&quot;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;&lt; samples_sent &lt;&lt; &quot; s=
ent).&quot;);</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; return;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; }</div>
<div>&nbsp; &nbsp; }</div>
<div><br>
</div>
<div>&nbsp; &nbsp; infile.close();</div>
<div>}</div>
<div><u>Reference C&#43;&#43; metadata</u></div>
<div><br>
</div>
<div>uhd::stream_args_t stream_args(&quot;sc16&quot;, &quot;sc16&quot;);</d=
iv>
<div>channel_nums.push_back(boost::lexical_cast&lt;size_t&gt;(channel));</d=
iv>
<div>stream_args.channels&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
=3D 0;</div>
<div>uhd::tx_streamer::sptr tx_stream =3D usrp-&gt;get_tx_stream(stream_arg=
s);</div>
<div>Expected Behavior</div>
<div>I would expect the two samples to perform exactly the same. The baseba=
nd should be identical</div>
<div><br>
</div>
<div><b>Actual Behaviour</b></div>
<div>Once shown on a spectrum analyzer, the C example shows a much larger g=
ain an the baseband appears fragmented. I don't understand how the C api ha=
ndles the buffer streaming. According to the code the C function wraps the =
exact same behavior of the send
 call.</div>
<div><br>
</div>
<div>Steps to reproduce the problem</div>
<div>I can provide source code for the two examples and binary file. Both s=
amples are executed at 2.5Msps</div>
<div><br>
</div>
<div><b>Question</b></div>
<div>What am I missing here to correctly stream the baseband? My understand=
ing is that once the data type is fixed in the streaming metadata, we call =
uhd_tx_streamer_send with the number of samples that we want to stream (whi=
ch is what the C&#43;&#43; example does
 using as type std::complex&lt;short&gt;. In the C case, how do we achieve =
the same behavior?</div>
<div><br>
</div>
<div>I would really appreciate any support in this matter.</div>
<div><br>
</div>
<div>Best regards</div>
<div>Marco Spanghero</div>
</div>
<br>
<p></p>
</div>
</body>
</html>

--_000_76da335236934c9a94b1213673509b88kthse_--

--===============6091115922743004332==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6091115922743004332==--
