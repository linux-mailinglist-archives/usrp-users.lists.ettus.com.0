Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 821D445DD61
	for <lists+usrp-users@lfdr.de>; Thu, 25 Nov 2021 16:27:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 781C33841D4
	for <lists+usrp-users@lfdr.de>; Thu, 25 Nov 2021 10:27:02 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="i57PXqWG";
	dkim-atps=neutral
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 5DDEA3841D2
	for <usrp-users@lists.ettus.com>; Thu, 25 Nov 2021 10:26:11 -0500 (EST)
Received: by mail-il1-f182.google.com with SMTP id w15so6221723ill.2
        for <usrp-users@lists.ettus.com>; Thu, 25 Nov 2021 07:26:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0NFdTShu6hT6dvJv0yZVPlVlbiLRtgoXec+o1w9ttTM=;
        b=i57PXqWGpri8FCGSOsqoaMLkPjoWn3ylDJlkC6kRd/XJ5Wio7WZAZBmMu4OxjYtaHx
         jK6zZLsOjyf3khNdcRVO0/3mij7WOH9xy/f65Ll9Mu8rRbrJwh58/3xvi++sqsEYhX9l
         wGkKNmnayvwn9ZVKJRskd9kjKBXW6S2xZ5ib5vPhM5pg3cGInvX0sx26My3UCSyYuV9z
         FrfZR5ScpnPG02koxCgzBNnMBxlQPAIDHtSmCWgE7cdbMmWIajsdQ8pFqaeR1PdoydAk
         QIT6NNkhMKhG/YOMDsVMn9jgjFWllKad+PsILrQjqm6PDTsO727/b9B/ZqXKzmhbX+Me
         efOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0NFdTShu6hT6dvJv0yZVPlVlbiLRtgoXec+o1w9ttTM=;
        b=iePoIvXiGYcfF92kh4SxXu9FzMmreWzJY07VtBs0GjmZSMiPLsl4bpgJ4qd/h6WwE6
         vCbx8rkpu4IX+kpaZFJGQancK5AgNpMTHLnrp6rsqbN8WJi3hdlrhk1wO1ZwCwvRz8Hf
         VZjcAGo1y3MB3MxgsKR+WdM/4ofGYUt2OTyMde1OLjCsZs3SrGue9ykPYxTt+gr8Y5Fp
         yA2clXcOGOug8aJLSHSPETie0kcfmyE5uWB/yg+sCp5Gnx23zGkNv358T506AeweF0I1
         n/Vm5qXQtbc+eBpJxjVGXQV4QC8gT5+DxT6phRfznQaPiM2uVaFzL6s5/zeYl76DkUoF
         nC4g==
X-Gm-Message-State: AOAM532Ve29a+oIYpSc3sgmOq8InpGFBeZOGbJuxC7I8Fkaw5bUEcRT9
	UlgUERSf/WqYNifRklHmsEbHh1qxHG+NjIlvopMRWtjtVL94VEYxpmI=
X-Google-Smtp-Source: ABdhPJyUM1V0JhVzN5aBQ7O9xnmVfnpW7jk3xrryjoDMDFH3r3zRpVPfLboDOF8vpSYjHDR7PxB6wM564+d8VnFV68A=
X-Received: by 2002:a05:6e02:4c2:: with SMTP id f2mr1684834ils.105.1637853970161;
 Thu, 25 Nov 2021 07:26:10 -0800 (PST)
MIME-Version: 1.0
References: <OL1P279MB00831EFE3B28943071A61160A0609@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
 <F2B2D4E0-C35D-45B0-BDF1-FFF42E1BAB89@gmail.com> <CAL7q81upKM0ydjvy+Msdob_QbVdVvyo6jpoToJToRP3K9tUfHA@mail.gmail.com>
 <OL1P279MB008317E3357504D515DF6B55A0609@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
In-Reply-To: <OL1P279MB008317E3357504D515DF6B55A0609@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 25 Nov 2021 16:25:59 +0100
Message-ID: <CAFOi1A6z_6+GKbbosv8oNc7b4GRkayprotxeeOLJ5QQ-rnwDzw@mail.gmail.com>
To: =?UTF-8?B?U2tvcnN0YWQsIErDuHJu?= <jsk@nkom.no>
Message-ID-Hash: VOOCPEGFFDVST33ILT6MC7SF5TH7L4P3
X-Message-ID-Hash: VOOCPEGFFDVST33ILT6MC7SF5TH7L4P3
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.1 memory leak?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VOOCPEGFFDVST33ILT6MC7SF5TH7L4P3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4816994460528597388=="

--===============4816994460528597388==
Content-Type: multipart/alternative; boundary="00000000000015f90c05d19e98a9"

--00000000000015f90c05d19e98a9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

J=C3=B8rn,

If it's not too much trouble, can you open an issue on
https://github.com/EttusResearch/uhd/issues and paste this code there? If
you don't have github access, I can also do it, but if you do it then you
get auto-updated when we publish updates.

Thanks,
Martin

On Tue, Nov 23, 2021 at 8:58 PM Skorstad, J=C3=B8rn <jsk@nkom.no> wrote:

> Copied and pasted some code to reproduce the issue. Hopefully it makes
> some sense... receiverLoop1 is increasing mem usage, receiverLoop2 does
> not.
>
> Btw, set_rx_iq_balance function seems to be inverted, setting it to false
> on the E310 reduces spectrum images more than 50 dB, while true reduces
> only about 24 dB...
>
>
> https://nor01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fdrive=
.google.com%2Ffile%2Fd%2F1cMLXzNLpkkhBQ9gtFgeZgm-8N3v-OEFd%2Fview%3Fusp%3Dd=
rivesdk&data=3D04%7C01%7Cjsk%40nkom.no%7Cf5e97e128b734e566f5308d9aeb928b6%7=
Cad83e65c03f64cfdb79947a2fafd7bce%7C0%7C0%7C637732932540044724%7CUnknown%7C=
TWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0=
%3D%7C3000&sdata=3Dd4z5DA9RGIP1MSe1JCD9njDShyl7o19JAP8lXtl3Op0%3D&reserved=
=3D0
>
>
>
> ------------------------------
> *Fra:* Jonathon Pendlum <jonathon.pendlum@ettus.com>
> *Sendt:* tirsdag 23. november 2021, 19:23
> *Til:* Marcus D Leech
> *Kopi:* Skorstad, J=C3=B8rn; usrp-users@lists.ettus.com
> *Emne:* Re: [USRP-users] Re: UHD 4.1 memory leak?
>
> Hi Jorn,
>
> Can you provide an example program we can use to reproduce the issue?
>
> Jonathon
>
> On Tue, Nov 23, 2021 at 12:44 PM Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
>
>> This looks like it might be a bug to me.
>>
>>
>>
>> Sent from my iPhone
>>
>> On Nov 23, 2021, at 6:00 AM, Skorstad, J=C3=B8rn <jsk@nkom.no> wrote:
>>
>> =EF=BB=BF
>>
>> Hello,
>>
>>
>>
>> I have some trouble using the UHD 4.1.0.2 library. I am using RFNOC
>> blocks RADIO and DDC, and setting up an RX stream using
>> graph->create_rx_streamer. The receiver loop is running in its own threa=
d
>> doing something like this (simplified):
>>
>>
>>
>> uhd::stream_cmd_t
>> stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_MORE);
>>
>> stream_cmd.num_samps  =3D size_t(sampsPerBuff);
>>
>> stream_cmd.stream_now =3D true;
>>
>> stream_cmd.time_spec  =3D uhd::time_spec_t();
>>
>>
>>
>> for (;;) {
>>
>>   rx_stream->issue_stream_cmd(stream_cmd);
>>
>>   rx_stream->recv(&buffer.front(), sampsPerBuff, md, 3.0, false);
>>
>>   std::this_thread::sleep_for(std::chrono::milliseconds(2));
>>
>> }
>>
>>
>>
>> I am developing for an E310 sg3.
>>
>>
>>
>> When calling issue_stream_cmd repeatedly this way memory usage goes up
>> until resources are depleted (few hours). If stream_cmd is replaced with
>> STREAM_MODE_START_CONTINUOUS and called just once memory usage is normal=
.
>> But for the application developed the mode NUM_SAMPS_AND_MORE is better
>> suited. It is also what we used with the 3.14.1 library, without any mem=
ory
>> problems like this.
>>
>>
>>
>> Any tips?
>>
>>
>>
>> BR
>>
>> Jorn
>>
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000015f90c05d19e98a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>J=C3=B8rn,</div><div><br></div><div>If it&#39;s not t=
oo much trouble, can you open an issue on <a href=3D"https://github.com/Ett=
usResearch/uhd/issues">https://github.com/EttusResearch/uhd/issues</a> and =
paste this code there? If you don&#39;t have github access, I can also do i=
t, but if you do it then you get auto-updated when we publish updates.</div=
><div><br></div><div>Thanks,</div><div>Martin<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 23, 2021=
 at 8:58 PM Skorstad, J=C3=B8rn &lt;<a href=3D"mailto:jsk@nkom.no">jsk@nkom=
.no</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">



<div>
<div style=3D"color:rgb(33,33,33);background-color:rgb(255,255,255)" dir=3D=
"auto">
Copied and pasted some code to reproduce the issue. Hopefully it makes some=
 sense... receiverLoop1 is increasing mem usage, receiverLoop2 does not.=C2=
=A0</div>
<div style=3D"color:rgb(33,33,33);background-color:rgb(255,255,255)" dir=3D=
"auto">
<br>
</div>
<div style=3D"color:rgb(33,33,33);background-color:rgb(255,255,255)" dir=3D=
"auto">
Btw, set_rx_iq_balance function seems to be inverted, setting it to false o=
n the E310 reduces spectrum images more than 50 dB, while true reduces only=
 about 24 dB...=C2=A0</div>
<div style=3D"color:rgb(33,33,33);background-color:rgb(255,255,255)" dir=3D=
"auto">
<br>
</div>
<div style=3D"color:rgb(33,33,33);background-color:rgb(255,255,255)" dir=3D=
"auto">
<a href=3D"https://nor01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2=
F%2Fdrive.google.com%2Ffile%2Fd%2F1cMLXzNLpkkhBQ9gtFgeZgm-8N3v-OEFd%2Fview%=
3Fusp%3Ddrivesdk&amp;data=3D04%7C01%7Cjsk%40nkom.no%7Cf5e97e128b734e566f530=
8d9aeb928b6%7Cad83e65c03f64cfdb79947a2fafd7bce%7C0%7C0%7C637732932540044724=
%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haW=
wiLCJXVCI6Mn0%3D%7C3000&amp;sdata=3Dd4z5DA9RGIP1MSe1JCD9njDShyl7o19JAP8lXtl=
3Op0%3D&amp;reserved=3D0" target=3D"_blank">https://nor01.safelinks.protect=
ion.outlook.com/?url=3Dhttps%3A%2F%2Fdrive.google.com%2Ffile%2Fd%2F1cMLXzNL=
pkkhBQ9gtFgeZgm-8N3v-OEFd%2Fview%3Fusp%3Ddrivesdk&amp;data=3D04%7C01%7Cjsk%=
40nkom.no%7Cf5e97e128b734e566f5308d9aeb928b6%7Cad83e65c03f64cfdb79947a2fafd=
7bce%7C0%7C0%7C637732932540044724%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwM=
DAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=3Dd4z5DA=
9RGIP1MSe1JCD9njDShyl7o19JAP8lXtl3Op0%3D&amp;reserved=3D0</a></div>
<div style=3D"color:rgb(33,33,33);background-color:rgb(255,255,255)" dir=3D=
"auto">
<br>
</div>
<div style=3D"color:rgb(33,33,33);background-color:rgb(255,255,255)" dir=3D=
"auto">
<br>
</div>
<div id=3D"gmail-m_-1548505386296681847id-3489cc72-dea4-4314-9079-f803bce5e=
fd3">
<div style=3D"font-family:sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-1548505386296681847divRplyFwdMsg"><strong>Fra:</strong>=
 Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" target=
=3D"_blank">jonathon.pendlum@ettus.com</a>&gt;<br>
<strong>Sendt:</strong> tirsdag 23. november 2021, 19:23<br>
<strong>Til:</strong> Marcus D Leech<br>
<strong>Kopi:</strong> Skorstad, J=C3=B8rn; <a href=3D"mailto:usrp-users@li=
sts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
<strong>Emne:</strong> Re: [USRP-users] Re: UHD 4.1 memory leak?<br>
</div>
<br>
<div dir=3D"ltr">Hi Jorn,
<div><br>
</div>
<div>Can you provide an example program we can use to reproduce the issue?<=
/div>
<div><br>
</div>
<div>Jonathon</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 23, 2021 at 12:44 PM Marc=
us D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank"=
>patchvonbraun@gmail.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"auto">This looks like it might be a bug to me.=C2=A0
<div><br>
</div>
<div><br>
<br>
<div dir=3D"ltr">Sent from my iPhone</div>
<div dir=3D"ltr"><br>
<blockquote type=3D"cite">On Nov 23, 2021, at 6:00 AM, Skorstad, J=C3=B8rn =
&lt;<a href=3D"mailto:jsk@nkom.no" target=3D"_blank">jsk@nkom.no</a>&gt; wr=
ote:<br>
<br>
</blockquote>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">=EF=BB=BF
<div>
<p class=3D"MsoNormal">Hello,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I have some trouble using the UHD 4.1.0.2 library. I=
 am using RFNOC blocks RADIO and DDC, and setting up an RX stream using gra=
ph-&gt;create_rx_streamer. The receiver loop is running in its own thread d=
oing something like this (simplified):<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">uhd::stream_cmd_t stream_cmd(uhd::stream_cmd_t::STRE=
AM_MODE_NUM_SAMPS_AND_MORE);<u></u><u></u></p>
<p class=3D"MsoNormal">stream_cmd.num_samps=C2=A0 =3D size_t(sampsPerBuff);=
<u></u><u></u></p>
<p class=3D"MsoNormal">stream_cmd.stream_now =3D true;<u></u><u></u></p>
<p class=3D"MsoNormal">stream_cmd.time_spec=C2=A0 =3D uhd::time_spec_t();<u=
></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">for (;;) {<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0 rx_stream-&gt;issue_stream_cmd(stream_cmd);<u=
></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0 rx_stream-&gt;recv(&amp;buffer.front(), samps=
PerBuff, md, 3.0, false);<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0 std::this_thread::sleep_for(std::chrono::mill=
iseconds(2));<u></u><u></u></p>
<p class=3D"MsoNormal">}<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am developing for an E310 sg3.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">When calling issue_stream_cmd repeatedly this way me=
mory usage goes up until resources are depleted (few hours). If stream_cmd =
is replaced with STREAM_MODE_START_CONTINUOUS and called just once memory u=
sage is normal. But for the application
 developed the mode NUM_SAMPS_AND_MORE is better suited. It is also what we=
 used with the 3.14.1 library, without any memory problems like this.<u></u=
><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Any tips?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">BR <u></u><u></u></p>
<p class=3D"MsoNormal">Jorn<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<span>_______________________________________________</span><br>
<span>USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.c=
om" target=3D"_blank">
usrp-users@lists.ettus.com</a></span><br>
<span>To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@li=
sts.ettus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a></span><br>
</div>
</blockquote>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</blockquote>
</div>
<br>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000015f90c05d19e98a9--

--===============4816994460528597388==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4816994460528597388==--
