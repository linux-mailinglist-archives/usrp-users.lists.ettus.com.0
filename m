Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9402E2278CC
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jul 2020 08:21:29 +0200 (CEST)
Received: from [::1] (port=35084 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jxleW-00017M-Ge; Tue, 21 Jul 2020 02:21:24 -0400
Received: from mail-qk1-f179.google.com ([209.85.222.179]:32848)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <hai.n.nguyen204@gmail.com>)
 id 1jxleP-0000tV-I2
 for usrp-users@lists.ettus.com; Tue, 21 Jul 2020 02:21:17 -0400
Received: by mail-qk1-f179.google.com with SMTP id l23so10411157qkk.0
 for <usrp-users@lists.ettus.com>; Mon, 20 Jul 2020 23:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=w/pKWRvThWB1iSJMaDJxklhJeyc+oqXNt5Q9LalRo8I=;
 b=IQKXzWMigQIMI/1fma7VjBq2f22+slwpSPKkGqXtzGZLnOzFutge1vk1CfGxRFa8js
 By4LaAcaFKFB03cnuR1kV/O3e95QlpEkKzEL1HQgIB/uP1cOXzprwvWmC5TAFJF60UKI
 yBE+PmAWZek4Sbbdglx7LCJU0eDwES7oXZRWkPgVLhXG635VKqU8O9pyRsvR9+ie4NN8
 h1XNyZUyxSKPPMYIkahS+FxR7zUaPWL0U5FOHD8pzWuko94IXvjLlBN3b1k4Exb+hULY
 XFdyJO1YJLglbpZKqZyPF9Y57mNv89X4DA4kWDAeU21e6eZH8kdLfyXVaQGfGEaliR4i
 kglQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=w/pKWRvThWB1iSJMaDJxklhJeyc+oqXNt5Q9LalRo8I=;
 b=rzrwH0CWjlo9ZpdVEmtOj+uJqkLUfoyZo9vZq7Sq4fezUl94LnADqLKplO+dkWecRb
 ZBeyeh5X8Gi6zkBkAIzDPajrMNuDru+/kpLySMalPVIcv+59+n6J+FydFrjbzaGKOuSr
 N4oJcK4/Nwx+5uhts2WSiRg7Ll2ecOajgS1BDFR/RBIkugD+zAyBO4yh9RcMoBVvWupr
 zigCvtrVAq5p7+Rhz8nxuKqPXitJGT/iBkc8oaoKZOaq6OTxPUpthD56stko2JSsXQBD
 mKdGlgUC5o7I0WkQOo8Yk1cPp3H3nlfG3MUyC0zavMiK8EaBtSegmGaFSLpMl9ZU10/j
 ie+A==
X-Gm-Message-State: AOAM532qBX412qXHGzkCcufmYUDfdZO6/Ioaa7VcaFLd4vS73V0sL3C3
 ixENGzr2un7zDBhgesEm9jmqDZI2p21MKGYCe8NcjMza
X-Google-Smtp-Source: ABdhPJzDww89tKOFswP1lOEYcApURtpeVr2StztJaiM0qC05G3al92Rzr3XCxH93GAj5j2rKkjA8fxBIwB5QsMYiglc=
X-Received: by 2002:a05:620a:142:: with SMTP id
 e2mr18112918qkn.418.1595312436655; 
 Mon, 20 Jul 2020 23:20:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAFZDN5J8ncEHAP1H=93cBUZ_sxOzydoXKc54sKgkCcFOHV9gYA@mail.gmail.com>
 <CAFZDN5+mXMNa4kMXfq8SUKTGn88apB3SbhCM1eoevJfGcbmO1g@mail.gmail.com>
In-Reply-To: <CAFZDN5+mXMNa4kMXfq8SUKTGn88apB3SbhCM1eoevJfGcbmO1g@mail.gmail.com>
Date: Tue, 21 Jul 2020 02:20:25 -0400
Message-ID: <CAFZDN5KCQ9MiZaAhkKU1KNewCwPyNhr-2RdBgo6E6eq864RMYA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Persistent red LINK LED,
 streaming samples valued zero
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
From: Hai Nguyen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Hai Nguyen <hai.n.nguyen204@gmail.com>
Content-Type: multipart/mixed; boundary="===============9054348889123597278=="
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

--===============9054348889123597278==
Content-Type: multipart/alternative; boundary="00000000000017ba0205aaed9fd1"

--00000000000017ba0205aaed9fd1
Content-Type: text/plain; charset="UTF-8"

Hi Marcus,

So with new UHD version, the LED behavior disappeared, but now the USRPs
cannot stream at all (0 samples received from streamer). I figured out that
this happens when I tried to create multiple threads for multiple
streamers, one streamer for one USRP. (I'm having 2 USRPs streaming 2 RX
channels simultaneously). I had to work around this by creating just one
extra thread for a USRP, while making the other USRP stream in the current
main thread. Another possible way would be using a single streamer...

I'm kinda confused (and curious!) why it is not possible to spawn multiple
threads for multiple streamers. This was not happening with B210s, but just
when I started to work with the X310s. I will be appreciate for further
info about this behavior.

-Hai

On Mon, Jul 20, 2020 at 12:32 PM Hai Nguyen <hai.n.nguyen204@gmail.com>
wrote:

> Hello,
>
> - Are you getting any under-run indications?
> There is no under-run indication.
>
> - What sample rate are you using?
> I tried with different values ranging from 1 Msamps to 100 Msamps and the
> behaviors are the same.
>
> - Do you see this at the same sample rate with an example application like
> "rx_samples_to_file".   Are you using standard FPGA firmware or do
>    you have your own modules in the FPGA?
> No, I don't see this with rx_samples_to_file (with that example, orange
> LINK LED appeared). I am using a standard FPGA image.
>
> - What version of UHD are you using?
> I'm using UHD 3.9.7 (LTS)
>
> Best,
> Hai
>
>
>
>
> On Mon, Jul 20, 2020 at 1:52 AM Hai Nguyen <hai.n.nguyen204@gmail.com>
> wrote:
>
>> Hello,
>>
>> I'm having an error where received samples from RX chains of a X310
>> (after calling recv from the streamer) have values of 0 (both I and Q), and
>> those values don't change over time. One abnormal thing is that the LINK
>> LED in the front panel is persistently red during streaming. I noticed that
>> when streaming samples is ok this LED is normally persistently orange
>> instead.
>>
>> Do you have any ideas what would be the cause of this?
>>
>> Thank you and best regards,
>> Hai
>>
>

--00000000000017ba0205aaed9fd1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Marcus,</div><div><br></div><div>So with new UHD v=
ersion, the LED behavior disappeared, but now the USRPs cannot stream at al=
l (0 samples received from streamer). I figured out that this happens when =
I tried to create multiple threads for multiple streamers, one streamer for=
 one USRP. (I&#39;m having 2 USRPs streaming 2 RX channels simultaneously).=
 I had to work around this by creating just one extra thread for a USRP, wh=
ile making the other USRP stream in the current main thread. Another possib=
le way would be using a single streamer...<br></div><div><br></div><div>I&#=
39;m kinda confused (and curious!) why it is not possible to spawn multiple=
 threads for multiple streamers. This was not happening with B210s, but jus=
t when I started to work with the X310s. I will be appreciate for further i=
nfo about this behavior.<br></div><div><br></div><div>-Hai<br></div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon,=
 Jul 20, 2020 at 12:32 PM Hai Nguyen &lt;<a href=3D"mailto:hai.n.nguyen204@=
gmail.com">hai.n.nguyen204@gmail.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello,</div><div>=
<br></div><div>- Are you getting any under-run indications?</div>
<div>There is no under-run indication.<br></div><div><br></div>
- What sample rate are you using?<br>
<div>I tried with different values ranging from 1 Msamps to 100 Msamps and =
the behaviors are the same.</div><div><br></div>
- Do you see this at the same sample rate with an example application like =
<br>
&quot;rx_samples_to_file&quot;.=C2=A0 =C2=A0Are you using standard FPGA fir=
mware or do<br><div>
=C2=A0 =C2=A0you have your own modules in the FPGA?</div><div>No, I don&#39=
;t see this with rx_samples_to_file (with that example, orange LINK LED app=
eared). I am using a standard FPGA image. <br></div>
<br><div>
- What version of UHD are you using?</div><div>I&#39;m using UHD 3.9.7 (LTS=
)</div><div><br></div><div>Best,</div><div>Hai<br></div><div><br></div><div=
><br></div><br>
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Mon, Jul 20, 2020 at 1:52 AM Hai Nguyen &lt;<a href=3D"mailto:hai.n.nguy=
en204@gmail.com" target=3D"_blank">hai.n.nguyen204@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
"><div>Hello,</div><div><br></div><div>I&#39;m having an error where receiv=
ed samples from RX chains of a X310 (after calling recv from the streamer) =
have values of 0 (both I and Q), and those values don&#39;t change over tim=
e. One abnormal thing is that the LINK LED in the front panel is persistent=
ly red during streaming. I noticed that when streaming samples is ok this L=
ED is normally persistently orange instead. <br></div><div><br></div><div>D=
o you have any ideas what would be the cause of this?</div><div><br></div><=
div>Thank you and best regards,</div><div>Hai<br></div></div>
</blockquote></div>
</blockquote></div>

--00000000000017ba0205aaed9fd1--


--===============9054348889123597278==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9054348889123597278==--

