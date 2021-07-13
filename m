Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 88AD73C7885
	for <lists+usrp-users@lfdr.de>; Tue, 13 Jul 2021 23:13:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9B192384ADE
	for <lists+usrp-users@lfdr.de>; Tue, 13 Jul 2021 17:13:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Yn4u80KW";
	dkim-atps=neutral
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	by mm2.emwd.com (Postfix) with ESMTPS id BA18D38408A
	for <usrp-users@lists.ettus.com>; Tue, 13 Jul 2021 17:12:29 -0400 (EDT)
Received: by mail-ot1-f53.google.com with SMTP id o17-20020a9d76510000b02903eabfc221a9so347604otl.0
        for <usrp-users@lists.ettus.com>; Tue, 13 Jul 2021 14:12:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6iK/LyOXoAVWvx+DQKEBeV57Y90UmMRktnRTjFyq2+I=;
        b=Yn4u80KWjlwHF+NyhDBGmAs5OsC48EC8ooC2BG+6Ft0EdEyhRLnA9J4tC7iXX37B2k
         x58JShM1HnZZfmPOjEyCE/MAJNWMRYJC9Db0E3aLCN4ae2rJPHMLr8KYg44MquQHygXt
         oddeK9wJ6hrrvkXmVlupjjlrgfVeyIsORGe9nudgzkLVvRr4SIg7Jx6RGHB+QlKB4ZPN
         rxnzq+b76JkDRDYuC8hbPoPRxGsIiHn4I8UZArhXfgYc8FYZSbszQka6X0Qv4Tlj8rUT
         y5ECnlPD9TkzsWiLWuC10YLFrlB93CWHWbl8t3IZyumb0s5/+OhVIhqusVolOFTcHWpY
         KaJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6iK/LyOXoAVWvx+DQKEBeV57Y90UmMRktnRTjFyq2+I=;
        b=EiwtXoBJ2yBUvhDjad0R2ToYIWUi8zfYXaW4LNpB11kOGilrNq6A0SHxonY3qjVXBX
         eQ4hyhiRlSyKmQpS+TvzTe6R6/4fVsN17qP7kZPjdERT+ytt72Vb/0z7EWqM4NyiG+lX
         OGwU96iNWskHrcS7nxJXWKK9nk6s9dLlpQzR7a1qV2JOUyrtYb6JZGZOxu/zHPhAIojC
         6ERmZtS1uhKKIlayZgZEKVEt00tdTkSj3M08LZ+gwJTAtilS2CpYytCQ4or3MHx23AmL
         vLLX01AhOae8ZwWGSoYMQiyzdWr/5OgVKsYs9mA9ZcUHzA0vz+PNGTUMTmfmJUsTpsua
         AUhA==
X-Gm-Message-State: AOAM530OWqOR3kBm3uHDmb6tDkutE1Xw0cVnr0nlCFZjWR8XEuTde7jt
	bIWkFJoD4/X59O4W8ap6hQ1AkWwY/B5EXBDI1ET98A==
X-Google-Smtp-Source: ABdhPJxJqJeMqDIIqC17Y6zKoYpuvDLioL5uVz5M77xM1qaKBwPYP16w5ZvS3P3tY9EW7cFDM3OYVSvOU8Sh2fd7MY0=
X-Received: by 2002:a9d:3a04:: with SMTP id j4mr5110780otc.301.1626210748775;
 Tue, 13 Jul 2021 14:12:28 -0700 (PDT)
MIME-Version: 1.0
References: <pM95ht57q9GReZHXVb85LlBgY4xqq2Izcpz6YxkoxE@lists.ettus.com>
In-Reply-To: <pM95ht57q9GReZHXVb85LlBgY4xqq2Izcpz6YxkoxE@lists.ettus.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 13 Jul 2021 16:12:18 -0500
Message-ID: <CAB__hTRqvSdcA-L2xn3feko941p8_HOqb-DnQNHO=i=ukEyifw@mail.gmail.com>
To: sunny04sam@gmail.com
Message-ID-Hash: EKUKA33GU5GLQNJWXLWW26MJ4S4RAE2S
X-Message-ID-Hash: EKUKA33GU5GLQNJWXLWW26MJ4S4RAE2S
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Waiting for async burst ACK... LLLLLLLLLLLLLLLLsuccess
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EKUKA33GU5GLQNJWXLWW26MJ4S4RAE2S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1625234496466590384=="

--===============1625234496466590384==
Content-Type: multipart/alternative; boundary="000000000000030b9205c707b223"

--000000000000030b9205c707b223
Content-Type: text/plain; charset="UTF-8"

Hi,
Which version of UHD?  Also, what if you have Rx on continuously and
schedule Tx but make Tx completely independent of Rx such that Tx is just
sending a dummy buffer?  Does this still produce L?
Rob

On Tue, Jul 13, 2021 at 3:54 PM <sunny04sam@gmail.com> wrote:

> Hi all,
>
> I am using x310 to continuously receive  on RF A RX2, process the data,
> and schedule a transmit periodically on RF B TX.  The issue I am running
> into is when the RX is in STREAM_MODE_START_CONTINUOUS, and TX is scheduled
> to send at a specific time in the future a set number of samples, I get a
> lot of LLLLs. I understand L is a late packet, but I get the same LLLs even
> if I add more time to the tx schedule.
>
> After I confirm the specified number of samples are sent, I set
> md.end_of_burst = true and call tx_stream->send("", 0, md). And, this when
> I see the LLLLs. I used the rec_sysnc_msg and found out the LLLs are
> printed while it is waiting for EVENT_CODE_BURST_ACK.
>
> Waiting for async burst ACK... LLLLLLLLLLLLLLLLsuccess
> Waiting for async burst ACK... LLLLLLLLLLLLLLLLsuccess
>
> I don't see this issue if RX is also scheduled or if I turn off the RX and
> send data from a buffer. Below is part of the code that handles the tx
> schedule and send. Any help would be greatly appreciated.
>
> uhd::tx_metadata_t md;
> md.start_of_burst = false;
> md.end_of_burst = false;
> md.has_time_spec = true;
> md.time_spec = uhd::time_spec_t(tx_send_time)
> tx_timeout = 2.0
>
> while (mainloop)
> {
>     //**
>     **//
>     while (num_tx_samps < tx_buff_size)
>     {
>         num_tx_samps = tx_stream->send(&txBuff[tx_buff_index],
> tx_buff_size, md, tx_timeout);
>         if (num_tx_samps < tx_buff_size)
>         {
>             std::cout << "  TX number of sample error: " << std::endl;
>             tx_buff_size -= num_tx_samps;
>             tx_buff_index += num_tx_samps;
>             num_tx_samps = 0;
>         }
>
>         md.has_time_spec = false;
>         md.start_of_burst = false;
>         md.end_of_burst = false;
>     }
>
>     // send a mini EOB packet
>     md.end_of_burst = true;
>     tx_stream->send("", 0, md);
>
>     std::cout << std::endl
>               << "Waiting for async burst ACK... " << std::flush;
>     uhd::async_metadata_t async_md;
>     bool got_async_burst_ack = false;
>     // loop through all messages for the ACK packet (may have underflow
> messages in queue)
>     while (not got_async_burst_ack and tx_stream->recv_async_msg(async_md,
> tx_timeout))
>     {
>         got_async_burst_ack =
>             (async_md.event_code ==
> uhd::async_metadata_t::EVENT_CODE_BURST_ACK);
>     }
>     std::cout << (got_async_burst_ack ? "success" : "fail") << std::endl;
>
>     //schedule the next tx
>     md.has_time_spec = true;
>     md.start_of_burst = false;
>     md.end_of_burst = false;
>     tx_time_spec += tx_time_interval;
>     md.time_spec = uhd::time_spec_t(tx_time_spec);
>     //**
>     **//
> }
>
> Thanks!
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000030b9205c707b223
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,</div><div>Which version of UHD?=C2=A0=
 Also, what if you have Rx on continuously and schedule Tx but make Tx comp=
letely independent of Rx such that Tx is just sending a dummy buffer?=C2=A0=
 Does this still produce L?</div><div>Rob</div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 13, 2021 at 3:54 PM &l=
t;<a href=3D"mailto:sunny04sam@gmail.com">sunny04sam@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi all,=C2=
=A0</p><p>I am using x310 to continuously=C2=A0receive=C2=A0 on RF A RX2, p=
rocess the data, and schedule a transmit periodically on RF B TX.=C2=A0 The=
 issue I am running into is when the RX is in=C2=A0STREAM_MODE_START_CONTIN=
UOUS, and TX is scheduled to send at a specific=C2=A0time in the future a s=
et number of samples, I get a lot of LLLLs. I understand L is a late packet=
, but I get the same LLLs even if=C2=A0I add more time to the tx schedule.=
=C2=A0=C2=A0</p><p>After I confirm=C2=A0the specified=C2=A0number of sample=
s are sent, I set md.end_of_burst =3D true and call tx_stream-&gt;send(&quo=
t;&quot;, 0, md). And, this when I see the LLLLs. I used the rec_sysnc_msg =
and found out the LLLs are printed while it is waiting for EVENT_CODE_BURST=
_ACK.=C2=A0</p><p>Waiting for async burst ACK... LLLLLLLLLLLLLLLLsuccess<br=
>Waiting for async burst ACK... LLLLLLLLLLLLLLLLsuccess<br><br></p><p>I don=
&#39;t see this issue if RX is also scheduled or if I turn off=C2=A0the RX =
and send data from a buffer. Below is part of the code that handles the tx =
schedule=C2=A0and send.=C2=A0Any help=C2=A0would be greatly appreciated. </=
p><p>uhd::tx_metadata_t md;<br>md.start_of_burst =3D false;<br>md.end_of_bu=
rst =3D false;<br>md.has_time_spec =3D true;<br>md.time_spec =3D uhd::time_=
spec_t(tx_send_time)<br>tx_timeout =3D 2.0<br><br>while (mainloop)<br>{<br>=
=C2=A0 =C2=A0 //**<br>=C2=A0 =C2=A0 **//<br>=C2=A0 =C2=A0 while (num_tx_sam=
ps &lt; tx_buff_size)<br>=C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 num=
_tx_samps =3D tx_stream-&gt;send(&amp;txBuff[tx_buff_index], tx_buff_size, =
md, tx_timeout);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (num_tx_samps &lt; tx_bu=
ff_size)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 std::cout &lt;&lt; &quot; =C2=A0TX number of sample error: &q=
uot; &lt;&lt; std::endl;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 tx_bu=
ff_size -=3D num_tx_samps;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 tx_=
buff_index +=3D num_tx_samps;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
num_tx_samps =3D 0;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br><br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 md.has_time_spec =3D false;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 md=
.start_of_burst =3D false;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 md.end_of_burst =
=3D false;<br>=C2=A0 =C2=A0 }<br><br>=C2=A0 =C2=A0 // send a mini EOB packe=
t<br>=C2=A0 =C2=A0 md.end_of_burst =3D true;<br>=C2=A0 =C2=A0 tx_stream-&gt=
;send(&quot;&quot;, 0, md);<br><br>=C2=A0 =C2=A0 std::cout &lt;&lt; std::en=
dl<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;&lt; &quot;Waiti=
ng for async burst ACK... &quot; &lt;&lt; std::flush;<br>=C2=A0 =C2=A0 uhd:=
:async_metadata_t async_md;<br>=C2=A0 =C2=A0 bool got_async_burst_ack =3D f=
alse;<br>=C2=A0 =C2=A0 // loop through all messages for the ACK packet (may=
 have underflow messages in queue)<br>=C2=A0 =C2=A0 while (not got_async_bu=
rst_ack and tx_stream-&gt;recv_async_msg(async_md, tx_timeout))<br>=C2=A0 =
=C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 got_async_burst_ack =3D<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (async_md.event_code =3D=3D uhd::async_m=
etadata_t::EVENT_CODE_BURST_ACK);<br>=C2=A0 =C2=A0 }<br>=C2=A0 =C2=A0 std::=
cout &lt;&lt; (got_async_burst_ack ? &quot;success&quot; : &quot;fail&quot;=
) &lt;&lt; std::endl;<br><br>=C2=A0 =C2=A0 //schedule the next tx<br>=C2=A0=
 =C2=A0 md.has_time_spec =3D true;<br>=C2=A0 =C2=A0 md.start_of_burst =3D f=
alse;<br>=C2=A0 =C2=A0 md.end_of_burst =3D false;<br>=C2=A0 =C2=A0 tx_time_=
spec +=3D tx_time_interval;<br>=C2=A0 =C2=A0 md.time_spec =3D uhd::time_spe=
c_t(tx_time_spec);<br>=C2=A0 =C2=A0 //**<br>=C2=A0 =C2=A0 **//<br>}<br><br>=
</p><p>Thanks!</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000030b9205c707b223--

--===============1625234496466590384==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1625234496466590384==--
