Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5216D154F07
	for <lists+usrp-users@lfdr.de>; Thu,  6 Feb 2020 23:41:44 +0100 (CET)
Received: from [::1] (port=52246 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1izpq0-0005NL-Pj; Thu, 06 Feb 2020 17:41:32 -0500
Received: from mail-lj1-f174.google.com ([209.85.208.174]:38401)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1izppw-0005FG-B6
 for usrp-users@lists.ettus.com; Thu, 06 Feb 2020 17:41:28 -0500
Received: by mail-lj1-f174.google.com with SMTP id w1so25182ljh.5
 for <usrp-users@lists.ettus.com>; Thu, 06 Feb 2020 14:41:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xt2OzrI/2LAV6ZrVprKW18/KzEvh3Ukpr7sgJ0K2uCc=;
 b=UQ5ahMKaTsO0EOSDMXQk2yXFOLmsdKeHDhgeiM8TNKsapLbc9yaObYQWO0wC+h+v3s
 KTsxjULydIhb+w1t2n1np/RdFWC5rRpDZhBfBEWzoTkhSjW0Dm2/mFsGZ46iw0m/j6Fw
 MQVSXDFwU3KBZwHjSrM7n68zYq9kk/VV9qkNtbwkp5uaL9JdNGBgVcms+Q6FruyT+ayY
 DdGnNlpXKygq/qs2tX1QjgNKcu1tre743b8j1mDZiwiF5PZNWsDoYOkIyw2H8d/eoRg3
 59DGyLDIjgTbFVGVAasM9QvrLq3nqT/4IphhAZHH+mOspM15c0UAk8SkLBthDquVV8gY
 4CsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xt2OzrI/2LAV6ZrVprKW18/KzEvh3Ukpr7sgJ0K2uCc=;
 b=YosdronqAgFm7myfk7bbBJnCrmIgbUqZ21aBJFLPTCufJj6bAehlT9znhiqgKCfbEQ
 hogs0q8Ku62rnJbhJ+uWQUqSjYwxDBwK7VidFUensSAFlK5FGzUSYJVaq3I3Cznd0KnZ
 uOyEpL1/U6izKuegZOiCbOPuaXZWOVsg2o50ulkEgRSneZhAVL5qn/GO8bj1+leV41fU
 yrahqc5v6+hCYZGBA3pq/u+n1B3daI9x9+nzjAT99O1ABovSGhZqjiJ152HQCQls+11w
 zFWO2BLWyQz/IjinfEvTddUOskTOic7M17l+jir+DwlpmBcCh45U9gbWXvnFOfMZyhLU
 gdNQ==
X-Gm-Message-State: APjAAAWDtg/LAt1V3TS2+sd7U6QZi+rc94kaMcPv8ZjYRUgUj05QyMUb
 hfEunsd4LGgDBAB4z+1sZQyGxL09I09a10iIp2CUw/eo
X-Google-Smtp-Source: APXvYqwdDJic5/4WjI4+Gzl2vG0Aqscc8FYST4iG/oHnzhXMap8fcnIDPMsQkAkNNXr0B6RpQN7yjNybJMLhdlY7kkw=
X-Received: by 2002:a2e:9b5a:: with SMTP id o26mr3470472ljj.190.1581028847110; 
 Thu, 06 Feb 2020 14:40:47 -0800 (PST)
MIME-Version: 1.0
References: <1580248757184.29364@mit.edu>
In-Reply-To: <1580248757184.29364@mit.edu>
Date: Thu, 6 Feb 2020 16:40:35 -0600
Message-ID: <CANf970bun1qm9PM4eo_Zt5Zxu81vh+_sgQDHkBh67HSVM7pKmQ@mail.gmail.com>
To: Richard Joseph Muri <ri28856@mit.edu>
Subject: Re: [USRP-users] Frequency hopping on short time scale using DSP
 tuning
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2170984248576435453=="
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

--===============2170984248576435453==
Content-Type: multipart/alternative; boundary="000000000000cfdbe9059deff620"

--000000000000cfdbe9059deff620
Content-Type: text/plain; charset="UTF-8"

Hey Richard,

Not sure if this is still on your radar, but I'd be curious to see the code
you're using to test this. Do you update your frequency tuning policy to be
DSP tuning only? If you want to pick this back up, feel free to shoot an
email to support@ettus.com and we can do a bit of a code walk through to
try to see what's going on.

Sam Reiter

On Tue, Jan 28, 2020 at 4:00 PM Richard Joseph Muri via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
>
> I have an application that schedules transmissions/receives on a short
> time scale (order of tens of microseconds). I'm attempting to gauge the
> feasibility of using a x310 with UBX-160 daughterboards and 10Gb ethernet
> for the application.
>
>
> I wrote a quick test to see approximately how long it would take to
> schedule a bunch of DSP retunes:
> for (int i = 0; i < packets_to_send; i += batch_size)
>     {
>         start = std::chrono::system_clock::now();
>         for (int j = 0; j < batch_size; j++)
>         {
>             // Hop at a scheduled time
>             usrp->set_tx_freq(tune_request.getNextTuneRequest());
>             usrp->clear_command_time();
>             cmd_time += schedule_increment;
>             usrp->set_command_time(cmd_time);
>         }
>         stop = std::chrono::system_clock::now();
>
>         elapsed = std::chrono::duration_cast<std::chrono::microseconds>(stop - start).count();
>         if (elapsed < batch_latency)
>         {
>             busyCheck(batch_latency - elapsed);
>         }
>         else
>         {
>             long_elapsed++;
>             std::cout << elapsed << ", ";
>         }
>     }
>
>
> The behavior is slightly different than I would expect. I know the USRP
> has a command FIFO with approximately 16 slots to queue up commands. I
> would expect that the first chunk of commands would execute quickly, and
> then the set_tx_freq call would start blocking as it waits for the queue to
> have space. Instead I see that the first handful of commands take on the
> order of 1000 us, and it steadily decreases in time until hitting a steady
> state where it takes 250 - 300 us to schedule a command.
>
>
> Are there any obvious mistakes in my test setup? Can I reduce my retune
> command times to under 100 us?
>
>
> Thanks,
>
> Richard
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000cfdbe9059deff620
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Richard,</div><div><br></div><div>Not sure if thi=
s is still on your radar, but I&#39;d be curious to see the code you&#39;re=
 using to test this. Do you update your frequency tuning policy to be DSP t=
uning only? If you want to pick this back up, feel free to shoot an email t=
o <a href=3D"mailto:support@ettus.com">support@ettus.com</a> and we can do =
a bit of a code walk through to try to see what&#39;s going on. <br></div><=
div><br></div><div><div><div dir=3D"ltr" class=3D"gmail_signature" data-sma=
rtmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam Reite=
r <br></div></div></div></div></div></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 28, 2020 at 4:00 PM R=
ichard Joseph Muri via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.et=
tus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr" style=3D"font-size:12pt;color:rgb(0,0,0);background-color:=
rgb(255,255,255);font-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hello,</p>
<p><br>
</p>
<p>I have an application that schedules transmissions/receives on a short t=
ime scale (order of tens of microseconds). I&#39;m attempting to gauge the =
feasibility of using a x310 with UBX-160 daughterboards and=C2=A010Gb ether=
net for the application.</p>
<p><br>
</p>
<p>I wrote a quick test to see approximately how long it would take to sche=
dule a bunch of DSP retunes:</p>
for=C2=A0(int=C2=A0i=C2=A0=3D=C2=A00;=C2=A0i=C2=A0&lt;=C2=A0packets_to_send=
;=C2=A0i=C2=A0+=3D=C2=A0batch_size)<br>
=C2=A0=C2=A0=C2=A0=C2=A0{<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0start=C2=A0=3D=C2=A0std::ch=
rono::system_clock::now();<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for=C2=A0(int=C2=A0j=C2=A0=
=3D=C2=A00;=C2=A0j=C2=A0&lt;=C2=A0batch_size;=C2=A0j++)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0//=
=C2=A0Hop=C2=A0at=C2=A0a=C2=A0scheduled=C2=A0time<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0usr=
p-&gt;set_tx_freq(tune_request.getNextTuneRequest());<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0usr=
p-&gt;clear_command_time();<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0cmd=
_time=C2=A0+=3D=C2=A0schedule_increment;<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0usr=
p-&gt;set_command_time(cmd_time);<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0stop=C2=A0=3D=C2=A0std::chr=
ono::system_clock::now();<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0elapsed=C2=A0=3D=C2=A0std::=
chrono::duration_cast&lt;std::chrono::microseconds&gt;(stop=C2=A0-=C2=A0sta=
rt).count();<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if=C2=A0(elapsed=C2=A0&lt;=
=C2=A0batch_latency)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bus=
yCheck(batch_latency=C2=A0-=C2=A0elapsed);<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0lon=
g_elapsed++;<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0std=
::cout=C2=A0&lt;&lt;=C2=A0elapsed=C2=A0&lt;&lt;=C2=A0&quot;,=C2=A0&quot;;<b=
r>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}<br>
=C2=A0=C2=A0=C2=A0=C2=A0}
<p><br>
</p>
<p>The behavior is slightly different than I would expect. I know the USRP =
has a command FIFO with approximately 16 slots to queue up commands. I woul=
d expect that the first chunk of commands would execute quickly, and then t=
he set_tx_freq call would start
 blocking as it waits for the queue to have space. Instead I see that the f=
irst handful of commands take on the order of 1000 us, and it steadily decr=
eases in time until hitting a steady state where it takes 250 - 300 us to s=
chedule a command.
</p>
<p><br>
</p>
<p>Are there any obvious mistakes in my test setup? Can I reduce my retune =
command times to under 100 us?</p>
<p><br>
</p>
<p>Thanks,</p>
<p>Richard<br>
</p>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000cfdbe9059deff620--


--===============2170984248576435453==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2170984248576435453==--

