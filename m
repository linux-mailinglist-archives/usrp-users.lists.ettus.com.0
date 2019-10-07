Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CF26ACEB51
	for <lists+usrp-users@lfdr.de>; Mon,  7 Oct 2019 19:59:16 +0200 (CEST)
Received: from [::1] (port=33566 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iHXHq-0006kG-O8; Mon, 07 Oct 2019 13:59:10 -0400
Received: from mail-ed1-f41.google.com ([209.85.208.41]:39363)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <daniel.jepson@ettus.com>)
 id 1iHXHm-0006ar-Jq
 for usrp-users@lists.ettus.com; Mon, 07 Oct 2019 13:59:06 -0400
Received: by mail-ed1-f41.google.com with SMTP id a15so13291459edt.6
 for <usrp-users@lists.ettus.com>; Mon, 07 Oct 2019 10:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=elytqTalrYeNfV3G1eBGbosV77Cb7E2xAQP8fpYQobM=;
 b=LGNCyMiRETdtm9RUyue6FjaIuL4VsUGWFr67e5LAjqQVELAmas/kY/clbDATa6nTzb
 dD6+ZWdl4fHu/uy4EW7YGELTHvDDVYUwHKIldgCkZnPyd4f42jRj0jRy2JuE9DVO9zGk
 TYTOwaFCTqq4HsRmKmWLbPyxzOfADET6pJIqTkocRmaYLZzvBHICr0ka6ZfJZPnvewhN
 B+7fEOTc9CHJjdKPzQW1sS51VkFApNpJUrFnXqbpqBPNwzbXq/CzM5thj7TtbdAcqRka
 EgJ2rXyXVrtH8hOPeTi3PNsy/KyR/hBYUIrpONeFS7lSL0Zx4W8m7uPfsearNnC4nTfl
 rXOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=elytqTalrYeNfV3G1eBGbosV77Cb7E2xAQP8fpYQobM=;
 b=mF4ov0QkqFj04344+GO2Mh80roC1C5FxVWqmAZ9BZkE2Jqt3/UQDf9YqSmT5FuOd/B
 hi9X69+zGYU7vpF06lcb+rpxjITSrqu8otnHjpYaEWkU/KN9XqzfJEjar3pTRfPNJhFD
 RCTEqHLaxhlMbBoXMB07jTEE6Bq994TeQwYKu9eZS/W33UTe1seEAnwZbNseupQiqTJ9
 5vqUSuNtLuE66fXEr8pPiSn7zHw3IiWzFQEsXoRT/xqS8fVw0LeMpLzxKpJvrqV7M9lW
 3y+MHrE24fXGEOno+kpKwI1OW/FQhm3s4fqlX+50Y75GlsX7aOXFjFjSr5SfEN0YrpyP
 Ulvg==
X-Gm-Message-State: APjAAAXMuyloHtcgRVNYcJIOEgtYWafTu2xD8uNW+8+P12VUuyDQAzE+
 t/Ji0W98ZYVz2xr8kpfqtjtBpn5l4YQlB2wlerxvYABpQVY=
X-Google-Smtp-Source: APXvYqzNGp8wJfC4ZGwRTfhFanGoYblykLoTKtPXXiIQAqcJms86Y0uk+vDlYhgpXXBp5w5XQVNgx7xR+ZkuOHgCNGc=
X-Received: by 2002:a17:906:8043:: with SMTP id
 x3mr24863058ejw.221.1570471105205; 
 Mon, 07 Oct 2019 10:58:25 -0700 (PDT)
MIME-Version: 1.0
References: <73ac263040924ec2b4166725b481be2d@tudelft.nl>
In-Reply-To: <73ac263040924ec2b4166725b481be2d@tudelft.nl>
Date: Mon, 7 Oct 2019 12:58:14 -0500
Message-ID: <CA+Zwmn7Fs6WdcUJPWjepOtvmuy1Dz+iEZReWxV5oAs52STUatA@mail.gmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] One sample - 5 ns delay between the two RF
 signals/ X310
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
From: Daniel Jepson via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Daniel Jepson <daniel.jepson@ettus.com>
Content-Type: multipart/mixed; boundary="===============5354675681754309293=="
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

--===============5354675681754309293==
Content-Type: multipart/alternative; boundary="0000000000005b2df5059455cc4a"

--0000000000005b2df5059455cc4a
Content-Type: text/plain; charset="UTF-8"

Cherif,

Great news! Congrats on the fix!

Cheers,
Daniel

On Mon, Oct 7, 2019 at 9:48 AM Cherif Diouf via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Daniel,
>
>
> The problem was finally solved. It was from both my software and my
> hardware development.
>
> -> in fact in the software I used the set_time_next_pps() call from the
> device3 object to synchronize the vitatime counter with the PPS signal, but
> later on I would also create a rfnoc_streamer object to be able to use
> the rf frontend. This would somewhat modify the vitatime value and
> desynchronize my local counter with the  vitatime counter causing random
> offset between the two counters.
>
> -> The second problem was linked to the cvita_hdr_encoder  which was not
> properly set, Leading the frontend to transmit asap, I guess.
>
>
> So from both these issues I could be from time to time off by one sample/5
> ns at the transmitter.
>
> Now that's old story !
>
>
> Many thanks
>
>
> Cherif
>
>
>
>
> __________________
>
> Fabian, I had a hunch it was just the 3.3V part--thanks for clarifying!
>
> Cherif, the DAC interface timing (and for that matter, the ADC timing)
> should be fairly tight. What you're seeing is expected and matches the
> numbers we designed it to. The FPGA constraints are intentionally tight to
> provide some extra margin at the DAC. Since this is all in the same X310,
> you could start by isolating the various components of the design using the
> front-panel GPIO connector. Run a trigger from each of your custom blocks
> to the GPIO and see if they line up on a scope. If they don't, then you
> might have a baseband timing issue (with how timed commands are interacting
> with your blocks). If they line up, then it points to a timing failure in
> the DAC.
>
> -Daniel
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


-- 

Daniel Jepson

Digital Hardware Engineer

National Instruments



O: +1.512.683.6163

daniel.jepson@ni.com

--0000000000005b2df5059455cc4a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Cherif,=C2=A0<div><br></div><div>Great news! Congrats on t=
he fix!</div><div><br></div><div>Cheers,</div><div>Daniel</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Oct =
7, 2019 at 9:48 AM Cherif Diouf via USRP-users &lt;<a href=3D"mailto:usrp-u=
sers@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_5888668865705840304divtagdefaultwrapper" style=3D"font-s=
ize:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"=
ltr">
<p>Daniel, <br>
</p>
<p><br>
</p>
<p>The problem was finally solved. It was from both my software and my hard=
ware development.</p>
<p>-&gt; in fact in the software I used the set_time_next_pps() call from t=
he device3 object to synchronize the vitatime counter with the PPS signal, =
but later on I would also create a
<span>rfnoc_streamer</span> object to be able to use the rf frontend. This =
would somewhat modify the vitatime value and desynchronize my local counter=
 with the=C2=A0 vitatime counter causing random offset between the two coun=
ters.</p>
<p>-&gt; The second problem was linked to the <span>cvita_hdr_encoder</span=
>=C2=A0 which was not properly set, Leading the frontend to transmit asap, =
I guess.</p>
<p><br>
</p>
<p>So from both these issues I could be from time to time off by one sample=
/5 ns at the transmitter.
<br>
</p>
<p>Now that&#39;s old story !</p>
<p><br>
</p>
<p>Many thanks<br>
</p>
<p><br>
</p>
<p>Cherif<br>
</p>
<p><br>
</p>
<p><br>
</p>
<p><br>
</p>
<p>__________________<br>
</p>
<p><font size=3D"2"><span style=3D"font-size:10pt">Fabian, I had a hunch it=
 was just the 3.3V part--thanks for clarifying!<br>
<br>
Cherif, the DAC interface timing (and for that matter, the ADC timing)<br>
should be fairly tight. What you&#39;re seeing is expected and matches the<=
br>
numbers we designed it to. The FPGA constraints are intentionally tight to<=
br>
provide some extra margin at the DAC. Since this is all in the same X310,<b=
r>
you could start by isolating the various components of the design using the=
<br>
front-panel GPIO connector. Run a trigger from each of your custom blocks<b=
r>
to the GPIO and see if they line up on a scope. If they don&#39;t, then you=
<br>
might have a baseband timing issue (with how timed commands are interacting=
<br>
with your blocks). If they line up, then it points to a timing failure in<b=
r>
the DAC.<br>
<br>
-Daniel</span></font><br>
</p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><p><a name=3D"SignatureSanitize=
r_SafeHtmlFilter__MailAutoSig"><span style=3D"color:black">Daniel
Jepson</span></a></p>

<p><span style=3D"color:black">Digital Hardware Engineer</span></p>

<p><span style=3D"color:black">National Instruments</span></p>

<p><span style=3D"color:black">=C2=A0</span></p>

<p><span style=3D"color:black">O: +1.512.683.6163</span></p>

<p><span style=3D"color:black"><a href=3D"mailto:daniel.jepson@ni.com" targ=
et=3D"_blank">daniel.jepson@ni.com</a></span></p></div></div>

--0000000000005b2df5059455cc4a--


--===============5354675681754309293==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5354675681754309293==--

