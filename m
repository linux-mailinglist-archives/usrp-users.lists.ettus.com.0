Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9C8F7307
	for <lists+usrp-users@lfdr.de>; Mon, 11 Nov 2019 12:23:09 +0100 (CET)
Received: from [::1] (port=45626 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iU7mj-0003Yq-UP; Mon, 11 Nov 2019 06:23:05 -0500
Received: from mail-lf1-f51.google.com ([209.85.167.51]:42405)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <anabel.almodovar@gmail.com>)
 id 1iU7mg-0003S2-GM
 for usrp-users@lists.ettus.com; Mon, 11 Nov 2019 06:23:02 -0500
Received: by mail-lf1-f51.google.com with SMTP id z12so9523817lfj.9
 for <usrp-users@lists.ettus.com>; Mon, 11 Nov 2019 03:22:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=XY0V6W+IvhLiV/aZBN89Veico8reMd/r6Rc2f50p9P8=;
 b=HYssi0oK2n1NXOuSJQlWMXwZ2zSVCRrqFmIsvYVaOkFqgj+tbMCtajwqahG0hFaIky
 /ggPO5VymHD9ejzxkHUWbXBKO5wFGUu+cJpf0KMy3VHUDagGP7VR/UX9uupwItkb/St1
 nKdwaq6yiKueCPBEuNmnBUp3GkP72x+JrGsOcXHWBJayGlNYbvmdXSCGxcqvISUBsZhH
 /t0F7PgX+dK/TS3FO8E0ORW+xp53kkQn/oBibVdTB6ppBTtRRcMmBLm8cm4BGfiIOxQf
 uSyl1S/J8HKrQfwvwMDXREtRJyCxLnP0c0B1UlWlwqp+ptoIeIJpzlEhSeL6CNAwnVhX
 i9dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=XY0V6W+IvhLiV/aZBN89Veico8reMd/r6Rc2f50p9P8=;
 b=VAuOU4+/ktLvlhPKuJ2oyAnCmqQDfwc3MSBuSpgmtOEjyh8g6+6Op3RvsaNymnwEoy
 mcVlTn1N1/bXkBiFflsK4lerT+l/6etcJ3x62fw/3gdeQhd9YGehrj1GrZZ7VutL+hQC
 RQffGx64eyEpeBZcOMgMXSkf1hvmBj40xlbeBj6b1jFURdLN1OkKDIgD2VxZUuQzkjdQ
 Tvagz3iWfVSBt9i+QBRK9b77z2RVcbltGgIQ1sUs4geStS2yV5S+SucWDfqkEi675ldv
 RUNGqruQH4FFr++HMikhnq08CQZBWPgl1Grg1NHx+5adbgNjVh5E+bJkDKi/M+axvazx
 u1/w==
X-Gm-Message-State: APjAAAXbqbGg4ugLO4xssSZyvADGR3NBY0ZXC5RLyU+gqtS9KgmdnwYr
 /GPTdpGNI1pUhlvC1RYAn8uIixNhwnSyf9OMLmYGYrzE
X-Google-Smtp-Source: APXvYqx9WDKGUlaFnY2QYP/Bd58PGVtvhh2lSsej3G2+DAVAEBNkQPKav37Uskg/M88JQquKNGpOigXadeS5irpls5M=
X-Received: by 2002:a19:41d7:: with SMTP id
 o206mr15159438lfa.188.1573471340825; 
 Mon, 11 Nov 2019 03:22:20 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 11 Nov 2019 12:22:09 +0100
Message-ID: <CAFPzw1kPRdVTo7+uWy2LE8aDtub_XTUBbt8uXWLJ4zT4VbwKug@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Long time adquisitions with an x310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Anabel Almodovar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Anabel Almodovar <anabel.almodovar@gmail.com>
Content-Type: multipart/mixed; boundary="===============1283542416048860945=="
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

--===============1283542416048860945==
Content-Type: multipart/alternative; boundary="000000000000559109059710584d"

--000000000000559109059710584d
Content-Type: text/plain; charset="UTF-8"

Hello,

I am working with two ettus x310 cards whose daughter boards are TwinRx. I
am trying to acquire and save to disk 20sg at 100MHz, however this gives me
overflow. The receive buffer size is the max.
My code sends 32 bursts divided into 3 cases.

*uhd::stream_cmd_t
stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_MORE); *

* stream_cmd.num_samps = ceil(acq_num_samps/32);; *

* stream_cmd.stream_now = false;*

*stream_cmd.time_spec = usrp->get_time_last_pps(0)+1.1;*
*uhd::stream_cmd_t
stream_cmd1(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_MORE); *

* stream_cmd1.num_samps = ceil(acq_num_samps/32);*

* stream_cmd1.stream_now = true; *

* uhd::stream_cmd_t
stream_cmd2(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE); *

* stream_cmd2.num_samps = ceil(acq_num_samps/32);*

* stream_cmd2.stream_now = true; *

* usrp->issue_stream_cmd(stream_cmd); *

* for (size_t c=0; c<30 ; c++)*


* usrp->issue_stream_cmd(stream_cmd1); *

*usrp->issue_stream_cmd(stream_cmd2); *

I have also tried 25MHz acquisitions of more than 85 sg, limit imposed by
the decimated block, obtaining as error an excess in the number of samples
per burst.

*[WARNING] [X300 RADIO] Requesting invalid sampling rate from device: 200
MHz. Actual rate is: 100 MHz.*

*[INFO] [MULTI_USRP] 1) catch time transition at pps edge*

*[INFO] [MULTI_USRP] 2) set times next pps (synchronously)*

*[ERROR] [RFNOC RADIO] Requesting too many samples in a single burst!
Requested 312687500, maximum is 268435455.*

*[INFO] [RFNOC RADIO] Note that a decimation block will increase the number
of samples per burst by the decimation factor. Your application may have
requested fewer samples.*

To solve this problem, I have increased the number of bursts to have a
smaller number of samples per burst. however, I get both the broken_chain
or timeout error.

I don't know how to solve this problem and try to make longer adquisitions
without getting any kind of error (overflow, broken_chain. timeout). Could
someone offer me any help?

Thank you in advanced.

Regards,
Anabel

--000000000000559109059710584d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div><span class=3D"gmail-=
tlid-translation gmail-translation" lang=3D"en"><span title=3D"" class=3D"g=
mail-">I am working with two ettus x310 cards whose daughter boards are Twi=
nRx.</span> <span title=3D"" class=3D"gmail-">I am trying to acquire and sa=
ve to disk 20sg at 100MHz, however this gives me overflow.</span> The recei=
ve buffer size is the max.<br><span title=3D"" class=3D"gmail-">My code sen=
ds 32 bursts divided into 3 cases.</span><span title=3D""></span></span></d=
iv><div><br></div><div>


=09
	<span></span><p style=3D"margin-bottom:0cm;line-height:100%"><font color=
=3D"#000000">
           <b><i><font face=3D"lucidatypewriter, serif"><font style=3D"font=
-size:10pt" size=3D"2">uhd::stream_cmd_t
stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_MORE);   </font></f=
ont></i></b></font><b><i>
</i></b></p><b><i>
</i></b><p style=3D"margin-bottom:0cm;line-height:100%">
</p><b><i>
</i></b><p style=3D"margin-bottom:0cm;line-height:100%"><b><i><font color=
=3D"#000000">
           <font face=3D"lucidatypewriter, serif"><font style=3D"font-size:=
10pt" size=3D"2">stream_cmd.num_samps
=3D ceil(acq_num_samps/32);;   </font></font></font></i></b>
</p><b><i>
</i></b><p style=3D"margin-bottom:0cm;line-height:100%"><b><i><font color=
=3D"#000000">
           <font face=3D"lucidatypewriter, serif"><font style=3D"font-size:=
10pt" size=3D"2">stream_cmd.stream_now
=3D </font></font></font><font color=3D"#0000ff"><font face=3D"lucidatypewr=
iter, serif"><font style=3D"font-size:10pt" size=3D"2">false</font></font><=
/font><font color=3D"#000000"><font face=3D"lucidatypewriter, serif"><font =
style=3D"font-size:10pt" size=3D"2">;</font></font></font></i></b></p><p st=
yle=3D"margin-bottom:0cm;line-height:100%"><b><i><font color=3D"#000000"><f=
ont face=3D"lucidatypewriter, serif"><font style=3D"font-size:10pt" size=3D=
"2">stream_cmd.time_spec
=3D usrp-&gt;get_time_last_pps(0)+1.1;</font></font></font></i></b></p><b><=
i><font color=3D"#000000"><font face=3D"lucidatypewriter, serif"><font styl=
e=3D"font-size:10pt" size=3D"2">uhd::stream_cmd_t
stream_cmd1(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_MORE);   </font></=
font></font>

</i><i>
</i></b><p style=3D"margin-bottom:0cm;line-height:100%"><b><i><font color=
=3D"#000000">
           <font face=3D"lucidatypewriter, serif"><font style=3D"font-size:=
10pt" size=3D"2">stream_cmd1.num_samps
=3D ceil(acq_num_samps/32);</font></font></font></i></b></p><p style=3D"mar=
gin-bottom:0cm;line-height:100%"><b><i><font color=3D"#000000">
           <font face=3D"lucidatypewriter, serif"><font style=3D"font-size:=
10pt" size=3D"2">stream_cmd1.stream_now
=3D </font></font></font><font color=3D"#0000ff"><font face=3D"lucidatypewr=
iter, serif"><font style=3D"font-size:10pt" size=3D"2">true</font></font></=
font><font color=3D"#000000"><font face=3D"lucidatypewriter, serif"><font s=
tyle=3D"font-size:10pt" size=3D"2">;
</font></font></font></i></b>
</p><b><i></i></b><p style=3D"margin-bottom:0cm;line-height:100%"><b><i><fo=
nt color=3D"#000000">
           <font face=3D"lucidatypewriter, serif"><font style=3D"font-size:=
10pt" size=3D"2">uhd::stream_cmd_t
stream_cmd2(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);      </font=
></font></font></i></b>
</p><b><i>
</i><i>
</i></b><p style=3D"margin-bottom:0cm;line-height:100%"><b><i><font color=
=3D"#000000">
           <font face=3D"lucidatypewriter, serif"><font style=3D"font-size:=
10pt" size=3D"2">stream_cmd2.num_samps
=3D ceil(acq_num_samps/32);</font></font></font></i></b></p><p style=3D"mar=
gin-bottom:0cm;line-height:100%"><b><i><font color=3D"#000000">
           <font face=3D"lucidatypewriter, serif"><font style=3D"font-size:=
10pt" size=3D"2">stream_cmd2.stream_now
=3D </font></font></font><font color=3D"#0000ff"><font face=3D"lucidatypewr=
iter, serif"><font style=3D"font-size:10pt" size=3D"2">true</font></font></=
font><font color=3D"#000000"><font face=3D"lucidatypewriter, serif"><font s=
tyle=3D"font-size:10pt" size=3D"2">;
 </font></font></font></i></b>
</p><b><i>
</i></b><p style=3D"margin-bottom:0cm;line-height:100%"><b><i><font color=
=3D"#000000">
           </font></i></b>
</p><b><i>
</i></b><p style=3D"margin-bottom:0cm;line-height:100%"><b><i><font color=
=3D"#000000">
       <font face=3D"lucidatypewriter, serif"><font style=3D"font-size:10pt=
" size=3D"2">usrp-&gt;issue_stream_cmd(stream_cmd);=C2=A0</font></font></fo=
nt><font color=3D"#228b22"><font face=3D"lucidatypewriter, serif"><font sty=
le=3D"font-size:10pt" size=3D"2"></font></font></font></i></b></p><b><i></i=
></b><p style=3D"margin-bottom:0cm;line-height:100%"><b><i><font color=3D"#=
000000">
       </font><font color=3D"#0000ff"><font face=3D"lucidatypewriter, serif=
"><font style=3D"font-size:10pt" size=3D"2">for</font></font></font><font c=
olor=3D"#000000"><font face=3D"lucidatypewriter, serif"><font style=3D"font=
-size:10pt" size=3D"2">
(size_t c=3D0; c&lt;30 ; c++)</font></font></font></i></b></p><b><i>
</i></b><p style=3D"margin-bottom:0cm;line-height:100%"><b><i><font color=
=3D"#000000">
           <font face=3D"lucidatypewriter, serif"><font style=3D"font-size:=
10pt" size=3D"2">usrp-&gt;issue_stream_cmd(stream_cmd1);
</font></font></font><font color=3D"#228b22"><font face=3D"lucidatypewriter=
, serif"><font style=3D"font-size:10pt" size=3D"2"><br></font></font></font=
></i></b></p><b><i></i></b><p style=3D"margin-bottom:0cm;line-height:100%">=
<font color=3D"#000000"><b><i>
           </i></b><font face=3D"lucidatypewriter, serif"><font style=3D"fo=
nt-size:10pt" size=3D"2"><b><i>usrp-&gt;issue_stream_cmd(stream_cmd2); </i>=
</b><br></font></font></font></p>

</div><div><br><span class=3D"gmail-tlid-translation gmail-translation" lan=
g=3D"en"><span title=3D""></span></span></div><div><span class=3D"gmail-tli=
d-translation gmail-translation" lang=3D"en"><span title=3D""></span><span =
title=3D"" class=3D"gmail-">I have also tried 25MHz acquisitions of more th=
an 85 sg, limit imposed by the decimated block, obtaining as error an exces=
s in the number of samples per burst.</span></span></div><div>


=09
	<span></span>
=09
=09


<p style=3D"margin-bottom:0cm;line-height:100%"><b><i>[WARNING] [X300
RADIO] Requesting invalid sampling rate from device: 200 MHz. Actual
rate is: 100 MHz.</i></b></p><b><i>
</i></b><p style=3D"margin-bottom:0cm;line-height:100%"><b><i>[INFO] [MULTI=
_USRP]=20
   1) catch time transition at pps edge</i></b></p><b><i>
</i></b><p style=3D"margin-bottom:0cm;line-height:100%"><b><i>[INFO] [MULTI=
_USRP]=20
   2) set times next pps (synchronously)</i></b></p><b><i>
</i></b><p style=3D"margin-bottom:0cm;line-height:100%"><b><i>[ERROR] [RFNO=
C
RADIO] Requesting too many samples in a single burst! Requested
312687500, maximum is 268435455.</i></b></p><b><i>
</i></b><p style=3D"margin-bottom:0cm;line-height:100%"><b><i>[INFO] [RFNOC=
 RADIO]
Note that a decimation block will increase the number of samples per
burst by the decimation factor. Your application may have requested
fewer samples.</i></b></p>

</div><div><br><span class=3D"gmail-tlid-translation gmail-translation" lan=
g=3D"en"></span></div><div><span class=3D"gmail-tlid-translation gmail-tran=
slation" lang=3D"en"><span title=3D"" class=3D"gmail-">To solve this proble=
m, I have increased the number of bursts to have a smaller number of sample=
s per burst.</span> <span title=3D"">however, I get both the broken_chain o=
r timeout error.</span><br><br><span title=3D"">I don&#39;t know how to sol=
ve this problem and try to make longer adquisitions without getting any kin=
d of error (overflow, broken_chain. timeout).</span> <span title=3D"">Could=
 someone offer me any help?</span></span></div><div><span class=3D"gmail-tl=
id-translation gmail-translation" lang=3D"en"><span title=3D""><br></span><=
/span></div><div><span class=3D"gmail-tlid-translation gmail-translation" l=
ang=3D"en"><span title=3D"">Thank you in advanced.</span></span></div><div>=
<span class=3D"gmail-tlid-translation gmail-translation" lang=3D"en"><span =
title=3D""><br></span></span></div><div><span class=3D"gmail-tlid-translati=
on gmail-translation" lang=3D"en"><span title=3D"">Regards,</span></span></=
div><div><span class=3D"gmail-tlid-translation gmail-translation" lang=3D"e=
n"><span title=3D"">Anabel<br></span></span></div></div>

--000000000000559109059710584d--


--===============1283542416048860945==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1283542416048860945==--

