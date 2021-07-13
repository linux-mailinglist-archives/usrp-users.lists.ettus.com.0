Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 37BC33C7844
	for <lists+usrp-users@lfdr.de>; Tue, 13 Jul 2021 22:54:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5E0C73849C2
	for <lists+usrp-users@lfdr.de>; Tue, 13 Jul 2021 16:54:51 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D3FF4383D08
	for <usrp-users@lists.ettus.com>; Tue, 13 Jul 2021 16:54:02 -0400 (EDT)
Date: Tue, 13 Jul 2021 20:54:02 +0000
To: usrp-users@lists.ettus.com
From: sunny04sam@gmail.com
Message-ID: <pM95ht57q9GReZHXVb85LlBgY4xqq2Izcpz6YxkoxE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: AN6RTYDUU2RDHNRM5SP6H6I5TVWPLCQT
X-Message-ID-Hash: AN6RTYDUU2RDHNRM5SP6H6I5TVWPLCQT
X-MailFrom: sunny04sam@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Waiting for async burst ACK... LLLLLLLLLLLLLLLLsuccess
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AN6RTYDUU2RDHNRM5SP6H6I5TVWPLCQT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4231677490269158862=="

This is a multi-part message in MIME format.

--===============4231677490269158862==
Content-Type: multipart/alternative;
 boundary="b1_pM95ht57q9GReZHXVb85LlBgY4xqq2Izcpz6YxkoxE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_pM95ht57q9GReZHXVb85LlBgY4xqq2Izcpz6YxkoxE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all,=C2=A0

I am using x310 to continuously=C2=A0receive=C2=A0 on RF A RX2, process t=
he data, and schedule a transmit periodically on RF B TX.=C2=A0 The issue=
 I am running into is when the RX is in=C2=A0STREAM_MODE_START_CONTINUOUS=
, and TX is scheduled to send at a specific=C2=A0time in the future a set=
 number of samples, I get a lot of LLLLs. I understand L is a late packet=
, but I get the same LLLs even if=C2=A0I add more time to the tx schedule=
.=C2=A0=C2=A0

After I confirm=C2=A0the specified=C2=A0number of samples are sent, I set=
 md.end_of_burst =3D true and call tx_stream->send("", 0, md). And, this =
when I see the LLLLs. I used the rec_sysnc_msg and found out the LLLs are=
 printed while it is waiting for EVENT_CODE_BURST_ACK.=C2=A0

Waiting for async burst ACK... LLLLLLLLLLLLLLLLsuccess\
Waiting for async burst ACK... LLLLLLLLLLLLLLLLsuccess

I don't see this issue if RX is also scheduled or if I turn off=C2=A0the =
RX and send data from a buffer. Below is part of the code that handles th=
e tx schedule=C2=A0and send.=C2=A0Any help=C2=A0would be greatly apprecia=
ted.=20

uhd::tx_metadata_t md;\
md.start_of_burst =3D false;\
md.end_of_burst =3D false;\
md.has_time_spec =3D true;\
md.time_spec =3D uhd::time_spec_t(tx_send_time)\
tx_timeout =3D 2.0\
\
while (mainloop)\
{\
=C2=A0 =C2=A0 //\*\*\
=C2=A0 =C2=A0 \*\*//\
=C2=A0 =C2=A0 while (num_tx_samps < tx_buff_size)\
=C2=A0 =C2=A0 {\
=C2=A0 =C2=A0 =C2=A0 =C2=A0 num_tx_samps =3D tx_stream->send(&txBuff\[tx_=
buff_index\], tx_buff_size, md, tx_timeout);\
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (num_tx_samps < tx_buff_size)\
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {\
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 std::cout << " =C2=A0TX number =
of sample error: " << std::endl;\
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 tx_buff_size -=3D num_tx_samps;=
\
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 tx_buff_index +=3D num_tx_samps=
;\
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 num_tx_samps =3D 0;\
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }\
\
=C2=A0 =C2=A0 =C2=A0 =C2=A0 md.has_time_spec =3D false;\
=C2=A0 =C2=A0 =C2=A0 =C2=A0 md.start_of_burst =3D false;\
=C2=A0 =C2=A0 =C2=A0 =C2=A0 md.end_of_burst =3D false;\
=C2=A0 =C2=A0 }\
\
=C2=A0 =C2=A0 // send a mini EOB packet\
=C2=A0 =C2=A0 md.end_of_burst =3D true;\
=C2=A0 =C2=A0 tx_stream->send("", 0, md);\
\
=C2=A0 =C2=A0 std::cout << std::endl\
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 << "Waiting for async bu=
rst ACK... " << std::flush;\
=C2=A0 =C2=A0 uhd::async_metadata_t async_md;\
=C2=A0 =C2=A0 bool got_async_burst_ack =3D false;\
=C2=A0 =C2=A0 // loop through all messages for the ACK packet (may have u=
nderflow messages in queue)\
=C2=A0 =C2=A0 while (not got_async_burst_ack and tx_stream->recv_async_ms=
g(async_md, tx_timeout))\
=C2=A0 =C2=A0 {\
=C2=A0 =C2=A0 =C2=A0 =C2=A0 got_async_burst_ack =3D\
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (async_md.event_code =3D=3D uhd=
::async_metadata_t::EVENT_CODE_BURST_ACK);\
=C2=A0 =C2=A0 }\
=C2=A0 =C2=A0 std::cout << (got_async_burst_ack ? "success" : "fail") << =
std::endl;\
\
=C2=A0 =C2=A0 //schedule the next tx\
=C2=A0 =C2=A0 md.has_time_spec =3D true;\
=C2=A0 =C2=A0 md.start_of_burst =3D false;\
=C2=A0 =C2=A0 md.end_of_burst =3D false;\
=C2=A0 =C2=A0 tx_time_spec +=3D tx_time_interval;\
=C2=A0 =C2=A0 md.time_spec =3D uhd::time_spec_t(tx_time_spec);\
=C2=A0 =C2=A0 //\*\*\
=C2=A0 =C2=A0 \*\*//\
}

Thanks!

--b1_pM95ht57q9GReZHXVb85LlBgY4xqq2Izcpz6YxkoxE
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi all,&nbsp;</p><p>I am using x310 to continuously&nbsp;receive&nbsp; o=
n RF A RX2, process the data, and schedule a transmit periodically on RF B =
TX.&nbsp; The issue I am running into is when the RX is in&nbsp;STREAM_MODE=
_START_CONTINUOUS, and TX is scheduled to send at a specific&nbsp;time in t=
he future a set number of samples, I get a lot of LLLLs. I understand L is =
a late packet, but I get the same LLLs even if&nbsp;I add more time to the =
tx schedule.&nbsp;&nbsp;</p><p>After I confirm&nbsp;the specified&nbsp;numb=
er of samples are sent, I set md.end_of_burst =3D true and call tx_stream-&=
gt;send("", 0, md). And, this when I see the LLLLs. I used the rec_sysnc_ms=
g and found out the LLLs are printed while it is waiting for EVENT_CODE_BUR=
ST_ACK.&nbsp;</p><p>Waiting for async burst ACK... LLLLLLLLLLLLLLLLsuccess<=
br>Waiting for async burst ACK... LLLLLLLLLLLLLLLLsuccess<br><br></p><p>I d=
on't see this issue if RX is also scheduled or if I turn off&nbsp;the RX an=
d send data from a buffer. Below is part of the code that handles the tx sc=
hedule&nbsp;and send.&nbsp;Any help&nbsp;would be greatly appreciated. </p>=
<p>uhd::tx_metadata_t md;<br>md.start_of_burst =3D false;<br>md.end_of_burs=
t =3D false;<br>md.has_time_spec =3D true;<br>md.time_spec =3D uhd::time_sp=
ec_t(tx_send_time)<br>tx_timeout =3D 2.0<br><br>while (mainloop)<br>{<br>&n=
bsp; &nbsp; //**<br>&nbsp; &nbsp; **//<br>&nbsp; &nbsp; while (num_tx_samps=
 &lt; tx_buff_size)<br>&nbsp; &nbsp; {<br>&nbsp; &nbsp; &nbsp; &nbsp; num_t=
x_samps =3D tx_stream-&gt;send(&amp;txBuff[tx_buff_index], tx_buff_size, md=
, tx_timeout);<br>&nbsp; &nbsp; &nbsp; &nbsp; if (num_tx_samps &lt; tx_buff=
_size)<br>&nbsp; &nbsp; &nbsp; &nbsp; {<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; std::cout &lt;&lt; " &nbsp;TX number of sample error: " &lt;&lt; =
std::endl;<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; tx_buff_size -=3D n=
um_tx_samps;<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; tx_buff_index +=
=3D num_tx_samps;<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; num_tx_samps=
 =3D 0;<br>&nbsp; &nbsp; &nbsp; &nbsp; }<br><br>&nbsp; &nbsp; &nbsp; &nbsp;=
 md.has_time_spec =3D false;<br>&nbsp; &nbsp; &nbsp; &nbsp; md.start_of_bur=
st =3D false;<br>&nbsp; &nbsp; &nbsp; &nbsp; md.end_of_burst =3D false;<br>=
&nbsp; &nbsp; }<br><br>&nbsp; &nbsp; // send a mini EOB packet<br>&nbsp; &n=
bsp; md.end_of_burst =3D true;<br>&nbsp; &nbsp; tx_stream-&gt;send("", 0, m=
d);<br><br>&nbsp; &nbsp; std::cout &lt;&lt; std::endl<br>&nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &lt;&lt; "Waiting for async burst ACK... " &=
lt;&lt; std::flush;<br>&nbsp; &nbsp; uhd::async_metadata_t async_md;<br>&nb=
sp; &nbsp; bool got_async_burst_ack =3D false;<br>&nbsp; &nbsp; // loop thr=
ough all messages for the ACK packet (may have underflow messages in queue)=
<br>&nbsp; &nbsp; while (not got_async_burst_ack and tx_stream-&gt;recv_asy=
nc_msg(async_md, tx_timeout))<br>&nbsp; &nbsp; {<br>&nbsp; &nbsp; &nbsp; &n=
bsp; got_async_burst_ack =3D<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; (=
async_md.event_code =3D=3D uhd::async_metadata_t::EVENT_CODE_BURST_ACK);<br=
>&nbsp; &nbsp; }<br>&nbsp; &nbsp; std::cout &lt;&lt; (got_async_burst_ack ?=
 "success" : "fail") &lt;&lt; std::endl;<br><br>&nbsp; &nbsp; //schedule th=
e next tx<br>&nbsp; &nbsp; md.has_time_spec =3D true;<br>&nbsp; &nbsp; md.s=
tart_of_burst =3D false;<br>&nbsp; &nbsp; md.end_of_burst =3D false;<br>&nb=
sp; &nbsp; tx_time_spec +=3D tx_time_interval;<br>&nbsp; &nbsp; md.time_spe=
c =3D uhd::time_spec_t(tx_time_spec);<br>&nbsp; &nbsp; //**<br>&nbsp; &nbsp=
; **//<br>}<br><br></p><p>Thanks!</p>

--b1_pM95ht57q9GReZHXVb85LlBgY4xqq2Izcpz6YxkoxE--

--===============4231677490269158862==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4231677490269158862==--
