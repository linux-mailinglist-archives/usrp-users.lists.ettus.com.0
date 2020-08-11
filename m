Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C915241B96
	for <lists+usrp-users@lfdr.de>; Tue, 11 Aug 2020 15:32:41 +0200 (CEST)
Received: from [::1] (port=49220 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k5UOM-0003TT-JW; Tue, 11 Aug 2020 09:32:38 -0400
Received: from mail-ej1-f41.google.com ([209.85.218.41]:35938)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bpadalino@gmail.com>) id 1k5UOI-0003Ge-RP
 for usrp-users@lists.ettus.com; Tue, 11 Aug 2020 09:32:34 -0400
Received: by mail-ej1-f41.google.com with SMTP id kq25so13106421ejb.3
 for <usrp-users@lists.ettus.com>; Tue, 11 Aug 2020 06:32:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1hDT427kN1bmQtc2CtHAawLu+m/TQNWg0wSPuG3/nI4=;
 b=X80MuA5eqFK/WgEWkp0yxY4gZ3cx7uIjXDu/qfD1qqH3CZfEu4sOWf+YgDVJndPTDD
 VDcY5MEKojKB2L4a7u/FjdBmZOQBBb4ixtmuGvEU5XjcCF9QbF9kAmHs9IbjTvFzHe5k
 l0g+x7vSxOwhq6+u+ijb0LLhtYAdGqb0WZkiwfH5H12UPkOfUhfUhYZN2NfzIkXap9ss
 UtVlSvyf24UwV4f0dytqJcJQ8B4iauUHyg0Glxg5dXXgkS30/EMDfWYUpSX0JZi8kcAV
 YdDeEqvc0jcsUNTIg7mSvnEEYstWa5J8A/Btg/M0+RvJLEzeHqhRJuCO3MEQKYn3ite0
 Ybyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1hDT427kN1bmQtc2CtHAawLu+m/TQNWg0wSPuG3/nI4=;
 b=tuqmjeHmkNlT8LVp61ak9O5Yk7xP8om5r9LuDCirYnqvOEMLaF7I3b3Zt0WF73eUhF
 XLgyRd/ji7XHfdiuR+l4z36oABwmE+YcDnlhx8C2ay/8QckGPW/vANLY554hk8GKOnnh
 8brSywSum5a3LuPQ8Q6AhyXTKM9QPhHFmUOFYOQtdFqWAZP9H01xg0VTb+kKfeBAzvi7
 8kb3mjVQ028LNqboHnGFdUSGv1kJzjvihfEvBo2u4HvXRs8csrOn5yI3UL0M88zspqx8
 TI/lXPCBAWusyo1liIGIzq/4WA9AP7FbJ5O6PI9rpKEBuXQnrOnJoZKiqPU2/mhnC5Qh
 hIHA==
X-Gm-Message-State: AOAM532tEniVu+9t0VMCrBK0cRMDav37XqVxbJ0JVg5hcnrmNpTNGmPz
 c4fejWLjw94ZWrJqcfw9E5tCqJhDDFAklshJto0=
X-Google-Smtp-Source: ABdhPJwhyElicmHTUP1jxuT07eW3jw9rMQn02CRYvI4mKCNQ+VOvdr1POB3ozUPzc9pBggeAZJWOUKDs6FoRd8j66GE=
X-Received: by 2002:a17:906:80c:: with SMTP id
 e12mr26779190ejd.128.1597152713706; 
 Tue, 11 Aug 2020 06:31:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAE_Rk55Bde-UiKK93hR-RGU5VpJGS7eoBB_2pe-bMw_Evd=1KQ@mail.gmail.com>
In-Reply-To: <CAE_Rk55Bde-UiKK93hR-RGU5VpJGS7eoBB_2pe-bMw_Evd=1KQ@mail.gmail.com>
Date: Tue, 11 Aug 2020 09:31:42 -0400
Message-ID: <CAEXYVK6cxU9WufzXn10i5QQh3-QBSo9UDmDBkt5VpVg=++30Xg@mail.gmail.com>
To: Daniel Ozer <danielozer22@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] =?utf-8?b?cmZub2MgcXVlc3Rpb25zOuKAj+KAjw==?=
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
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Content-Type: multipart/mixed; boundary="===============7191763418823806486=="
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

--===============7191763418823806486==
Content-Type: multipart/alternative; boundary="000000000000270f9305ac9a1832"

--000000000000270f9305ac9a1832
Content-Type: text/plain; charset="UTF-8"

On Tue, Aug 11, 2020 at 6:18 AM Daniel Ozer via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi everyone,
> Im just started  developing on the usrp X310 platform and i have some
> questions :
>
> 1. Is the crossbar is capable to transfer data between 2 rfnoc blocks at
> maximum rate of the crossbar clock ?(bus_clk=187.5MHZ)
>

Yes.  Each port can handle 200MHz worth of bandwidth, but it cannot handle
full bandwidth from both radios at the same time.  You'd need multiple
crossbar ports for that.

>
> 2. if i have this theoretical chain : rfnoc: block1 ->  rfnoc: block2 ->
> rfnoc: block3 ->  rfnoc: block4
>  Is every block can send data to the next block at the maximum rate of the
> crossbar clk ?
>

Yes.  The crossbar acts as a switch.


>
> 3. I have a chain :  rfnoc: signal source -> rfnoc: DUC (1M to 200M) ->
> rfnoc:radio_block.
> how is it possible that the connection between the duc and the radio block
> doesn't throw an error because the transfer rate is bigger than the clk
> speed of the crossbar ?
>

The bus widths are different between the two domains.  Most everything on
ce_clk is 32-bit IQ samples, whereas the bus_clk domain is 64-bits wide.


>
> 4. Is it possible to change the crossbar clk to ce_clk=214MHZ instead of
> bus clk ?
>

Maybe, but what would be the point?  You'll probably end up not being able
to close timing on the design, but that's just a guess.


>
> 5. I saw in the article (" Measured Latency Introduced by RFNoC
> Architecture" )that the nocshell and the axi wrapper have a big latency
> (100nanosec and 1.7microsec) . There is a way to drop down the latency ?
>

I don't know how to address this.  Maybe a link to the article and to
figure out where the "large" latencies are?  What is your target latency?

Brian

--000000000000270f9305ac9a1832
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, Aug 11, 2020 at 6:18 AM Daniel Oz=
er via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-us=
ers@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"rtl"><div id=3D"g=
mail-m_64641900704133377gmail-m_5740917156441633232gmail-:17g" style=3D"fon=
t-size:0.875rem;direction:rtl;margin:8px 0px 0px;padding:0px"><div id=3D"gm=
ail-m_64641900704133377gmail-m_5740917156441633232gmail-:17f" style=3D"over=
flow:hidden;font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;font-size:small;line-height:1.5"><div dir=3D"rtl"><div dir=
=3D"ltr"><div dir=3D"ltr">Hi everyone,</div><div dir=3D"ltr">Im just starte=
d=C2=A0=C2=A0developing=C2=A0on the usrp X310 platform=C2=A0and i have some=
 questions :<br><br></div><div dir=3D"ltr">1. Is the crossbar is capable to=
 transfer data between 2 rfnoc blocks=C2=A0at maximum rate of the crossbar =
clock ?(bus_clk=3D187.5MHZ)=C2=A0</div></div></div></div></div></div></bloc=
kquote><div><br></div><div>Yes.=C2=A0 Each port can handle 200MHz worth of =
bandwidth, but it cannot handle full bandwidth from both radios at the same=
 time.=C2=A0 You&#39;d need multiple crossbar ports for that.</div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"rtl"><div id=3D"gmail=
-m_64641900704133377gmail-m_5740917156441633232gmail-:17g" style=3D"font-si=
ze:0.875rem;direction:rtl;margin:8px 0px 0px;padding:0px"><div id=3D"gmail-=
m_64641900704133377gmail-m_5740917156441633232gmail-:17f" style=3D"overflow=
:hidden;font-variant-numeric:normal;font-variant-east-asian:normal;font-str=
etch:normal;font-size:small;line-height:1.5"><div dir=3D"rtl"><div dir=3D"l=
tr"><div dir=3D"ltr"><br></div><div dir=3D"ltr">2. if i have this theoretic=
al chain : rfnoc: block1 -&gt;=C2=A0 rfnoc: block2 -&gt;=C2=A0 rfnoc: block=
3 -&gt;=C2=A0 rfnoc: block4</div><div dir=3D"ltr">=C2=A0Is every block can =
send data to the next block at the maximum rate of the crossbar clk ?</div>=
</div></div></div></div></div></blockquote><div><br></div><div>Yes.=C2=A0 T=
he crossbar acts as a switch.</div><div>=C2=A0<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"rtl"><div id=3D"gmail-m_646419=
00704133377gmail-m_5740917156441633232gmail-:17g" style=3D"font-size:0.875r=
em;direction:rtl;margin:8px 0px 0px;padding:0px"><div id=3D"gmail-m_6464190=
0704133377gmail-m_5740917156441633232gmail-:17f" style=3D"overflow:hidden;f=
ont-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:norm=
al;font-size:small;line-height:1.5"><div dir=3D"rtl"><div dir=3D"ltr"><div =
dir=3D"ltr"><br></div><div dir=3D"ltr">3. I have a chain :=C2=A0 rfnoc: sig=
nal source=C2=A0-&gt; rfnoc: DUC (1M to 200M) -&gt; rfnoc:radio_block.</div=
><div dir=3D"ltr">how is it possible that the connection between the duc an=
d the radio block doesn&#39;t=C2=A0throw an error because the transfer rate=
 is bigger than the clk speed of the crossbar ?<br></div></div></div></div>=
</div></div></blockquote><div><br></div><div>The bus widths are different b=
etween the two domains.=C2=A0 Most everything on ce_clk is 32-bit IQ sample=
s, whereas the bus_clk domain is 64-bits wide.</div><div>=C2=A0</div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"rtl"><div id=3D"gma=
il-m_64641900704133377gmail-m_5740917156441633232gmail-:17g" style=3D"font-=
size:0.875rem;direction:rtl;margin:8px 0px 0px;padding:0px"><div id=3D"gmai=
l-m_64641900704133377gmail-m_5740917156441633232gmail-:17f" style=3D"overfl=
ow:hidden;font-variant-numeric:normal;font-variant-east-asian:normal;font-s=
tretch:normal;font-size:small;line-height:1.5"><div dir=3D"rtl"><div dir=3D=
"ltr"><div dir=3D"ltr"><br></div><div dir=3D"ltr">4. Is it possible to chan=
ge=C2=A0the crossbar clk to ce_clk=3D214MHZ instead=C2=A0of bus clk ?</div>=
</div></div></div></div></div></blockquote><div><br></div><div>Maybe, but w=
hat would be the point?=C2=A0 You&#39;ll probably end up not being able to =
close timing on the design, but that&#39;s just a guess.</div><div>=C2=A0</=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"rtl"><div=
 id=3D"gmail-m_64641900704133377gmail-m_5740917156441633232gmail-:17g" styl=
e=3D"font-size:0.875rem;direction:rtl;margin:8px 0px 0px;padding:0px"><div =
id=3D"gmail-m_64641900704133377gmail-m_5740917156441633232gmail-:17f" style=
=3D"overflow:hidden;font-variant-numeric:normal;font-variant-east-asian:nor=
mal;font-stretch:normal;font-size:small;line-height:1.5"><div dir=3D"rtl"><=
div dir=3D"ltr"><div dir=3D"ltr"><br></div><div dir=3D"ltr">5. I saw in the=
 article (&quot; Measured Latency Introduced by
RFNoC Architecture&quot; )that the nocshell=C2=A0and the axi wrapper have a=
 big latency (100nanosec and 1.7microsec) . There is a way to drop down the=
 latency ?</div></div></div></div></div></div></blockquote><div><br></div><=
div>I don&#39;t know how to address this.=C2=A0 Maybe a link to the article=
 and to figure out where the &quot;large&quot; latencies are?=C2=A0 What is=
 your target latency?</div><div><br></div><div>Brian</div></div></div>

--000000000000270f9305ac9a1832--


--===============7191763418823806486==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7191763418823806486==--

