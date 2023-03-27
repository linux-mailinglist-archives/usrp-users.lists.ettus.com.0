Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 167FA6C99BF
	for <lists+usrp-users@lfdr.de>; Mon, 27 Mar 2023 04:51:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 684373844B8
	for <lists+usrp-users@lfdr.de>; Sun, 26 Mar 2023 22:51:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679885501; bh=aKd8VC9A7zy+lr57Dk+KHkFGA4QnJ54GhlHCmoH8rYo=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=G1BVNBOEnc1cB2yK6iWtwvgwpbt944ZJJXJbSofx/tL23W4MDBe994NWCvD1tPSDW
	 9NYXv5O1S9cntkIEROSlbf1XtaIX/LVAcjl/tUjdsnn4jFUh5v0pfCJt3xXfStR3wp
	 uf3R9UyWX4I1wn9CjxOQiuZ/3vRUz04YUZ/UeYK5rxcrFmBocGmE20QB7ogK028Lzk
	 hLaYVILQfFVcrsrSZ2Ge40gCeBbN7IT9E7QRi6SYzmGmvejk0YLCqlc3F2q12A0Qsr
	 1KRx3NrBB5K0HU+5kC67TiGrmRyTC5nfezmaetI936VWx6JPXbiFZvwwgL5poHKqRG
	 91iiOsgbFxTkw==
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com [209.85.222.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 40E9A383D8C
	for <usrp-users@lists.ettus.com>; Sun, 26 Mar 2023 22:51:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HYnR5UcP";
	dkim-atps=neutral
Received: by mail-ua1-f52.google.com with SMTP id g9so5247057uam.9
        for <usrp-users@lists.ettus.com>; Sun, 26 Mar 2023 19:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679885463;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hnoPlEEbD8b6uGeLh+uS2BWCpOEHfhzyD2DhWR81N0U=;
        b=HYnR5UcPtgv3ktunoyPYl4yhdUNI7rOJ6Fu0BfKzDWc4kldJTlooav6/IeqR6XNcnH
         Iy/Yt+d4PbTdFXm3gA8JU0ES9AWxkQh/9s1WLo2HY6QLvaAj2xmcJcvMEBLTaf1Axw5/
         LnBrvH4bvth9FAKP6lkS6NKUyQyfkLh5G7My+/2KnTv+C9Hbr30jXSIYQQIem62TkFo6
         onVCVb7cqHU4TL/jzNoufN18XRbJO7iXkFf5Lrr5yMGkQiYAuLrFwvqwJJP4xIBYz7Ro
         zGMhmxh6vq8pLX5Z3V1pwFJs03QZb8I9rbJmQq/j03rK8+DwHAea854g8d21AUfTiFqw
         O7Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679885463;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hnoPlEEbD8b6uGeLh+uS2BWCpOEHfhzyD2DhWR81N0U=;
        b=h3L2fMcJqesg/BO+WRAgu0G00l9Cp/RYMx8rfOoXKTMhF/gVfi44AY7U4J+bYoKp04
         OULHgicdg9BdI3Kv9hG2Z0/YNOATx7qkq9d92TR+a+FA/oDvMD5C8aVgDOMZ8XYQckjr
         3AWzxPXoWkv2CYjIv0t27dcsqoU55QcjBGfYk2zg45ko4GGK0UeHcqHJ3w6dAWJyf1rL
         7dsNn+Y22Sw+a9zCDWjLZosi9AW6ofMJWwJw8URr43pbwIg+myOxNHvdtcmNQs8SIy4K
         7p2Cs7cr82iQt7nJVtUL9Z9QxJKfnmD/3AKBMGJLZ4Gy4ySRqzCHXiG4t+gZ4pivuTis
         oaaA==
X-Gm-Message-State: AAQBX9ekwQRu98lP510qOEezmfx4iG81h2iYMoNAGo85aaCutHaAMP6N
	vxXd6StUKDa/1tYSccIAjoMFYaTOb07BNlVznNY=
X-Google-Smtp-Source: AKy350aljz1NXEIdLGrUKsEdB7YO9UWLF4SRHZnHKDh8O0GriYjfk3qi+hdlDvtp+QqjskV1HuMCALw3pBb3q8DqGjg=
X-Received: by 2002:a1f:2d56:0:b0:439:d3e1:112b with SMTP id
 t83-20020a1f2d56000000b00439d3e1112bmr5415620vkt.0.1679885463347; Sun, 26 Mar
 2023 19:51:03 -0700 (PDT)
MIME-Version: 1.0
References: <SJ0PR09MB91263A201E869804E985BCD9EC819@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAEXYVK5UG5wy7MQxJj5bVpHWt4K3gFU=ks=DCdFr1uQQdDJZGA@mail.gmail.com>
 <SJ0PR09MB9126C531C901C0141417CDECEC819@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAEXYVK6EiG-7Tif=0QKGec9Mm=G06v+wwGT1hGyWi-3b=s8ZAw@mail.gmail.com>
In-Reply-To: <CAEXYVK6EiG-7Tif=0QKGec9Mm=G06v+wwGT1hGyWi-3b=s8ZAw@mail.gmail.com>
From: Robert McGwier <rwmcgwier@gmail.com>
Date: Sun, 26 Mar 2023 22:50:52 -0400
Message-ID: <CA+K5gze-WqPNY6a8hRudbRqLhPfN8POGSUHnaRVrkW+VpOxxqQ@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: 4QAK2S6KFMGAW6ISDMZ56I2T4ERJ2NTK
X-Message-ID-Hash: 4QAK2S6KFMGAW6ISDMZ56I2T4ERJ2NTK
X-MailFrom: rwmcgwier@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Eugene Grayver <eugene.grayver@aero.org>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Wideband IQ Daughterboard
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4QAK2S6KFMGAW6ISDMZ56I2T4ERJ2NTK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0254454631106579845=="

--===============0254454631106579845==
Content-Type: multipart/alternative; boundary="0000000000004e670c05f7d8d03c"

--0000000000004e670c05f7d8d03c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Can the  existing firmware support that bandwidth? The 10Gbps Ethernet can
but I am not sure about the rest of the USRP. I own two of them and have
never tried to do that.

Bob


On Wed, Mar 22, 2023 at 9:58 AM Brian Padalino <bpadalino@gmail.com> wrote:

> You're right - I completely missed that part of the email.
>
> My apologies.
>
> Brian
>
> On Tue, Mar 21, 2023 at 7:12=E2=80=AFPM Eugene Grayver <eugene.grayver@ae=
ro.org>
> wrote:
>
>> Yes, as stated in the original post 'Basic-RX with a minimum of 1 MHz'.
>> The DC is cutoff by the balun on the basicRX making it unsuitable for IQ=
.
>>
>> ________________________
>>
>> Eugene Grayver, Ph.D.
>> Aerospace Corp., Principal Engineer
>> Tel: 310.336.1274
>> ________________________
>>
>> ------------------------------
>> *From:* Brian Padalino <bpadalino@gmail.com>
>> *Sent:* Tuesday, March 21, 2023 3:18 PM
>> *To:* Eugene Grayver <eugene.grayver@aero.org>
>> *Cc:* usrp-users <usrp-users@lists.ettus.com>
>> *Subject:* Re: [USRP-users] Wideband IQ Daughterboard
>>
>> On Tue, Mar 21, 2023 at 6:12=E2=80=AFPM Eugene Grayver <eugene.grayver@a=
ero.org>
>> wrote:
>>
>> Hello,
>>
>> I want to use an external IQ mixer with an external LO.  My signal is 16=
0
>> MHz wide, which fits nicely into the nominal complex 200 MHz Nyquist of =
the
>> X310.  Unfortunately the only daughterboards for direct access to the AD=
Cs
>> are LFRX which maxes out at 30 MHz, and the Basic-RX with a minimum of 1
>> MHZ.
>>
>> I am thinking of spinning a custom daughter board derived from LFRX with
>> a wideband differential driver such as
>> https://www.analog.com/media/en/technical-documentation/data-sheets/6406=
fc.pdf or
>> alternatively just replacing the chip on an LFRX since these appear to b=
e
>> footprint compatible.
>>
>> Separately, I was looking at LFTX schematics and the part # for the
>> amplifier is not specified.  Can somebody at Ettus/NI save me some time =
and
>> lookup that part #.
>>
>> Comments?
>>
>>
>> Have you considered the BasicRX?
>>
>>   https://www.ettus.com/all-products/basicrx/
>>   https://files.ettus.com/schematics/basic_dbs/BasicRX.pdf
>>
>> Brian
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
--=20
Dr. Robert W McGwier, Ph.D.
Affiliated Faculty, Virginia Tech
Affiliated Faculty, University of Scranton
Former ARDC Member of Board
N4HY: ARRL, TAPR, AMSAT, EARC, CSVHFS
Sky: AAVSO, Sky360, explorescu.org, Skyscrapers

--0000000000004e670c05f7d8d03c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Can the =C2=A0existing firmware support that bandwidth? T=
he 10Gbps Ethernet can but I am not sure about the rest of the USRP. I own =
two of them and have never tried to do that.=C2=A0</div><div dir=3D"auto"><=
br></div><div dir=3D"auto">Bob</div><div dir=3D"auto"><br></div><div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar =
22, 2023 at 9:58 AM Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.co=
m">bpadalino@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x"><div dir=3D"ltr">You&#39;re right - I completely missed that part of the=
 email.<div><br></div><div>My apologies.</div></div><div dir=3D"ltr"><div><=
br>Brian</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Mar 21, 2023 at 7:12=E2=80=AFPM Eugene Grayver &lt;=
<a href=3D"mailto:eugene.grayver@aero.org" target=3D"_blank">eugene.grayver=
@aero.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div>




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Yes, as stated in the original post &#39;<span style=3D"background-color:rg=
b(255,255,255);display:inline">Basic-RX with a minimum of 1 MHz&#39;.=C2=A0=
 The DC is cutoff by the balun on the basicRX making it unsuitable for IQ.<=
/span></div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"m_-3752729570845385827m_6627413906338424829Signature">
<div>
<div id=3D"m_-3752729570845385827m_6627413906338424829divtagdefaultwrapper"=
 dir=3D"ltr" style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,=
sans-serif;font-size:12pt;background-color:rgb(255,255,255)">
<p><span style=3D"color:black;font-family:Arial,sans-serif;font-size:10pt">=
<span id=3D"m_-3752729570845385827m_6627413906338424829ms-rterangepaste-sta=
rt"></span><span style=3D"color:rgb(0,0,0);font-family:Arial,sans-serif;fon=
t-size:13.33px">________________________</span><span id=3D"m_-3752729570845=
385827m_6627413906338424829ms-rterangepaste-end"></span><br>
</span></p>
<p><span style=3D"color:black;font-family:Arial,sans-serif;font-size:10pt">=
Eugene Grayver, Ph.D.<br>
Aerospace Corp., Principal Engineer<br>
Tel: 310.336.1274<br>
________________________</span><br>
</p>
</div>
</div>
</div>
</div>
<div id=3D"m_-3752729570845385827m_6627413906338424829appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-3752729570845385827m_6627413906338424829divRplyFwdMsg" dir=3D=
"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-si=
ze:11pt"><b>From:</b> Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.=
com" target=3D"_blank">bpadalino@gmail.com</a>&gt;<br>
<b>Sent:</b> Tuesday, March 21, 2023 3:18 PM<br>
<b>To:</b> Eugene Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.org" ta=
rget=3D"_blank">eugene.grayver@aero.org</a>&gt;<br>
<b>Cc:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Wideband IQ Daughterboard</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">On Tue, Mar 21, 2023 at 6:12=E2=80=AFPM Eugene Grayver &lt=
;<a href=3D"mailto:eugene.grayver@aero.org" target=3D"_blank">eugene.grayve=
r@aero.org</a>&gt; wrote:<br>
</div>
<div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
I want to use an external IQ mixer with an external LO.=C2=A0 My signal is =
160 MHz wide, which fits nicely into the nominal complex 200 MHz Nyquist of=
 the X310.=C2=A0 Unfortunately the only daughterboards for direct access to=
 the ADCs are LFRX which maxes out at 30 MHz,
 and the Basic-RX with a minimum of 1 MHZ.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
I am thinking of spinning a custom daughter board derived from LFRX with a =
wideband differential driver such as=C2=A0<a href=3D"https://www.analog.com=
/media/en/technical-documentation/data-sheets/6406fc.pdf" id=3D"m_-37527295=
70845385827m_6627413906338424829x_m_29364865378333502LPlnk885883" target=3D=
"_blank">https://www.analog.com/media/en/technical-documentation/data-sheet=
s/6406fc.pdf</a>=C2=A0or
 alternatively just replacing the chip on an LFRX since these appear to be =
footprint compatible.=C2=A0</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Separately, I was looking at LFTX schematics and the part # for the amplifi=
er is not specified.=C2=A0 Can somebody at Ettus/NI save me some time and l=
ookup that part #.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Comments?</div>
</div>
</div>
</blockquote>
<div><br>
</div>
<div>Have you considered the BasicRX?</div>
<div><br>
</div>
<div>=C2=A0=C2=A0<a href=3D"https://www.ettus.com/all-products/basicrx/" ta=
rget=3D"_blank">https://www.ettus.com/all-products/basicrx/</a></div>
<div>=C2=A0=C2=A0<a href=3D"https://files.ettus.com/schematics/basic_dbs/Ba=
sicRX.pdf" target=3D"_blank">https://files.ettus.com/schematics/basic_dbs/B=
asicRX.pdf</a></div>
<div><br>
</div>
<div>Brian</div>
</div>
</div>
</div>
</div>

</div></blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><div d=
ir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"l=
tr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><di=
v dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr" style=3D"font-size:small"><=
span style=3D"color:rgb(80,0,80)">Dr. Robert W McGwier, Ph.D.</span><br sty=
le=3D"color:rgb(80,0,80)">Affiliated=C2=A0<span style=3D"color:rgb(80,0,80)=
">Faculty, Virginia Tech</span></div><div dir=3D"ltr" style=3D"font-size:sm=
all">Affiliated Faculty, University of Scranton<br style=3D"color:rgb(80,0,=
80)"><span style=3D"color:rgb(80,0,80)">Former ARDC Member of Board</span><=
br style=3D"color:rgb(80,0,80)"><span style=3D"color:rgb(80,0,80)">N4HY: AR=
RL, TAPR, AMSAT, EARC, CSVHFS</span><br style=3D"color:rgb(80,0,80)"><span =
style=3D"color:rgb(80,0,80)">Sky: AAVSO, Sky360, <a href=3D"http://explores=
cu.org" target=3D"_blank">explorescu.org</a>, Skyscrapers</span><br></div><=
/div></div></div></div></div></div></div></div></div></div></div></div></di=
v></div>

--0000000000004e670c05f7d8d03c--

--===============0254454631106579845==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0254454631106579845==--
