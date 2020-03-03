Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6A9177DB4
	for <lists+usrp-users@lfdr.de>; Tue,  3 Mar 2020 18:45:49 +0100 (CET)
Received: from [::1] (port=42676 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j9Bc4-0007hH-I1; Tue, 03 Mar 2020 12:45:48 -0500
Received: from mail-ot1-f42.google.com ([209.85.210.42]:43933)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1j9Bc1-0007WE-0C
 for usrp-users@lists.ettus.com; Tue, 03 Mar 2020 12:45:45 -0500
Received: by mail-ot1-f42.google.com with SMTP id j5so3839466otn.10
 for <usrp-users@lists.ettus.com>; Tue, 03 Mar 2020 09:45:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TgmzfNYVNjRbkjlGKMgHhXa+upJ4s4Menph3fxSG9YM=;
 b=RsBSqdgq0Bt6mzfwBUVCmkIHAR/Wa9Cfvro+5KYsfTjjOef1XtH+Zq5yiKYQrc0EVK
 pjWGRz0cJ7UT3ifFnDfWZzTh5fW0tQ1mbJhqsne2K8+6gRer6UgbCeH/8S8ZNLv6BZf5
 8qpNYLjcW6gZSQW2ilK4e6hihT9D8awl9Sk9Hz20G2ehhpaM3MAfCdt6I5vryhjePhvU
 dK9Y4v7onQ/6Uqcgug9IsQ7DJHCNegj/CgLmb2qisB9MHXBlawWhsFQbXJV/D5lLhAJj
 CNZfGsbg+1N5Ffejd88WuqJd9hhl1Rws4iu7jekF3Iw0FXkur39H+VuOpmia8lRwkH+X
 sYbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TgmzfNYVNjRbkjlGKMgHhXa+upJ4s4Menph3fxSG9YM=;
 b=Tf5jRcWTk/rJqhUMY12dnnajDt9ZSxtUOP2/wAXMB7M4/ScG+aBbOXs6LWlKclyxbS
 HcDAQeIcv2tUU7gbxQ1/pilh46vqAALziwVZjBJlqHKWEzPcGlm05gWaV9TSndqhAkp/
 gMxykW9BoiCHUtOLLsLZhOnqAvZV8H49XVNP9lPGmsTm3P4I33FYF5evnMkIabT/vIYK
 YyXV2LueViNqfkg1ImoQItTiDWM/c7/zI1UT/kuoBiUMDcey3aagG9CBflQezR662d5q
 i1jfnlg958wg4PT3fUPkerYIDy1cu8V1N0J2cjwy0558d9ewb3vsjZMUQNDuzCnLoGGC
 6I9g==
X-Gm-Message-State: ANhLgQ1Qz+9lzE3G4sIk/btsX1F3xSh0zPdCgh3a2apz6RQaAqmuijym
 HLQXsYv/7aLnbYeZcHm1H0vSRXS1uV/wEwHkj2RmEpgP
X-Google-Smtp-Source: ADFU+vvykyapNqbKJjsByyRdB2rTBvTXbCWsqFeLs9rZF2MrzRwUDPvjIyYiXuiQlJdOQcupe/faFRic06gG/8J2T48=
X-Received: by 2002:a9d:6b12:: with SMTP id g18mr4105720otp.211.1583257504138; 
 Tue, 03 Mar 2020 09:45:04 -0800 (PST)
MIME-Version: 1.0
References: <trinity-6d081d85-efab-4ee6-9dfd-d15b3f6ff1b5-1583161440082@3c-app-gmx-bs64>
 <CAB__hTSgAJcWu=AwsRYs6HmGYMOqk1kAKC4fFgmVWVd8Fw0THQ@mail.gmail.com>
 <CANf970YbM=F5UBzKQsQ2jGH4X=BKScx1YbNJ=TFhEKfDg-XBww@mail.gmail.com>
 <5E5E96BA.5010905@gmail.com>
In-Reply-To: <5E5E96BA.5010905@gmail.com>
Date: Tue, 3 Mar 2020 12:44:50 -0500
Message-ID: <CAB__hTRb6Qm1gg=Qm_w6wf0kSguUxD_OtJQaJMoX1T7PtLAjZA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] USRP X310 ignored DSP retuning on TX when using a
 timed command
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6408044196023593895=="
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

--===============6408044196023593895==
Content-Type: multipart/alternative; boundary="0000000000001f7cf1059ff6dd69"

--0000000000001f7cf1059ff6dd69
Content-Type: text/plain; charset="UTF-8"

Hi Marcus,
I'm pretty sure that the DDC and DUC don't have access to the MB clock and
thus have no option but to executed timed commands using the time stamp in
the sample stream.
Rob

On Tue, Mar 3, 2020 at 12:41 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 03/03/2020 12:08 PM, Sam Reiter via USRP-users wrote:
>
> For what it's worth, I was able to reproduce the behavior described here,
> but didn't get to dig into it much. My leading suspicion would be what Rob
> mentioned about timestamping. Lukas' code sets a command time, but I'm not
> clear on how timestamp metadata for packets being sent to the radio are
> handled. Might be a good question to loop the discuss-gnuradio mailing list
> in on?
>
> Sam Reiter
>
> Timed commands, I thought, were ALWAYS referred to the motherboard clock,
> without regard to timestamps in the stream?
>
>
>
> On Tue, Mar 3, 2020 at 10:59 AM Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> I wonder if the issue is related to a missing time stamp on the baseband
>> samples going from GR to UHD.  If the stream does not have a time stamp,
>> the DUC is unable to apply the timed command because the DUC does not
>> really know the time - it must pull the time from the streaming samples.
>> This is in contrast to the radio block which does have access to time and
>> can apply timed commands by referring to the motherboard clock.
>>
>> I am not too familiar with GR so I'm not sure how to know if GR is
>> putting a time stamp on the streaming samples.
>> Rob
>>
>> On Mon, Mar 2, 2020 at 10:04 AM Lukas Haase via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi Marcus,
>>>
>>> Thank you that would be amazing!
>>>
>>> I followed the tutorial and built everything from source:
>>>
>>> $ lsb_release -a
>>> No LSB modules are available.
>>> Distributor ID: Ubuntu
>>> Description:    Ubuntu 18.04.4 LTS
>>> Release:        18.04
>>> Codename:       bionic
>>> $ uname -a
>>> Linux sdr 5.3.0-40-generic #32~18.04.1-Ubuntu SMP Mon Feb 3 14:05:59 UTC
>>> 2020 x86_64 x86_64 x86_64 GNU/Linux
>>> $ cd uhd
>>> $ git status
>>> HEAD detached at v3.15.0.0
>>> $ cd ../gnuradio
>>> $ git status
>>> HEAD detached at v3.7.14.0
>>>
>>>
>>> Thank you!
>>>
>>> Lukas
>>>
>>>
>>>
>>> PS: For some reason I sometimes do not get responses from this list. I
>>> just saw it looking at the mailman archives. Hence I cannot respond (to
>>> keep headers intact) but need to create a new message and manually "quote".
>>> I hope that still preserves the context somehow.
>>>
>>>
>>>
>>> Marcus Leech wrote:
>>> > On 02/28/2020 01:01 PM, Lukas Haase via USRP-users wrote:
>>> >> Hi again,
>>> >>
>>> >> I created a minimum example (gnuradio) that shows the issue described
>>> below.
>>> >> To summarize: Retuning to a different dsp frequency on an USRP X310
>>> (+UBX160) does not work (command ignored) ONLY if a timed command (in
>>> future is used).
>>> >> The code shows it in a simple manner. Commenting out the single line
>>> with set_command_time makes the example work.
>>> >>
>>> >> I am absolutely out of ideas and would appreciate any input!
>>> >>
>>> >> Best,
>>> >> Lukas
>>> > Lukas.
>>> >
>>> > Thanks for sticking with this.  I'll have a discussion with Ettus R&D
>>> to
>>> > see if this is a known issue and/or if there's a workaround.
>>> >
>>> > Remind me which version of UHD you're using?
>>>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000001f7cf1059ff6dd69
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Marcus,</div><div>I&#39;m pretty sure that the DDC=
 and DUC don&#39;t have access to the MB clock and thus have no option but =
to executed timed commands using the time stamp in the sample stream.</div>=
<div>Rob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Tue, Mar 3, 2020 at 12:41 PM Marcus D. Leech via USRP-users &lt;=
<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 03/03/2020 12:08 PM, Sam Reiter via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">For what it&#39;s worth, I was able to reproduce the
        behavior described here, but didn&#39;t get to dig into it much. My
        leading suspicion would be what Rob mentioned about
        timestamping. Lukas&#39; code sets a command time, but I&#39;m not =
clear
        on how timestamp metadata for packets being sent to the radio
        are handled. Might be a good question to loop the
        discuss-gnuradio mailing list in on?
        <div>
          <div><br clear=3D"all">
            <div>
              <div dir=3D"ltr">
                <div dir=3D"ltr">
                  <div>
                    <div dir=3D"ltr">Sam Reiter <br>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    Timed commands, I thought, were ALWAYS referred to the motherboard
    clock, without regard to timestamps in the stream?<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 3, 2020 at 10:59
          AM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users@li=
sts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">I wonder if the issue is related to a missing
            time stamp on the baseband samples going from GR to UHD.=C2=A0 =
If
            the stream does not have a time stamp, the DUC is unable to
            apply the timed command because the DUC does not really know
            the time - it must pull the time from the streaming samples.
            This is in contrast to the radio block which does have
            access to time and can apply timed commands by referring to
            the motherboard clock.
            <div><br>
            </div>
            <div>I am not too familiar with GR so I&#39;m not sure how to
              know if GR is putting a time stamp on the streaming
              samples.<br>
              <div>Rob</div>
            </div>
          </div>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Mar 2, 2020 at
              10:04 AM Lukas Haase via USRP-users &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&g=
t;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Marcus,<br=
>
              <br>
              Thank you that would be amazing!<br>
              <br>
              I followed the tutorial and built everything from source:<br>
              <br>
              $ lsb_release -a<br>
              No LSB modules are available.<br>
              Distributor ID: Ubuntu<br>
              Description:=C2=A0 =C2=A0 Ubuntu 18.04.4 LTS<br>
              Release:=C2=A0 =C2=A0 =C2=A0 =C2=A0 18.04<br>
              Codename:=C2=A0 =C2=A0 =C2=A0 =C2=A0bionic<br>
              $ uname -a<br>
              Linux sdr 5.3.0-40-generic #32~18.04.1-Ubuntu SMP Mon Feb
              3 14:05:59 UTC 2020 x86_64 x86_64 x86_64 GNU/Linux<br>
              $ cd uhd<br>
              $ git status<br>
              HEAD detached at v3.15.0.0<br>
              $ cd ../gnuradio<br>
              $ git status<br>
              HEAD detached at v3.7.14.0<br>
              <br>
              <br>
              Thank you!<br>
              <br>
              Lukas<br>
              <br>
              <br>
              <br>
              PS: For some reason I sometimes do not get responses from
              this list. I just saw it looking at the mailman archives.
              Hence I cannot respond (to keep headers intact) but need
              to create a new message and manually &quot;quote&quot;. I hop=
e that
              still preserves the context somehow.<br>
              <br>
              <br>
              <br>
              Marcus Leech wrote:<br>
              &gt; On 02/28/2020 01:01 PM, Lukas Haase via USRP-users
              wrote:<br>
              &gt;&gt; Hi again,<br>
              &gt;&gt;<br>
              &gt;&gt; I created a minimum example (gnuradio) that shows
              the issue described below.<br>
              &gt;&gt; To summarize: Retuning to a different dsp
              frequency on an USRP X310 (+UBX160) does not work (command
              ignored) ONLY if a timed command (in future is used).<br>
              &gt;&gt; The code shows it in a simple manner. Commenting
              out the single line with set_command_time makes the
              example work.<br>
              &gt;&gt;<br>
              &gt;&gt; I am absolutely out of ideas and would appreciate
              any input!<br>
              &gt;&gt;<br>
              &gt;&gt; Best,<br>
              &gt;&gt; Lukas<br>
              &gt; Lukas.<br>
              &gt;<br>
              &gt; Thanks for sticking with this.=C2=A0 I&#39;ll have a
              discussion with Ettus R&amp;D to<br>
              &gt; see if this is a known issue and/or if there&#39;s a
              workaround.<br>
              &gt;<br>
              &gt; Remind me which version of UHD you&#39;re using?<br>
              <br>
              <br>
              <br>
              _______________________________________________<br>
              USRP-users mailing list<br>
              <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blan=
k">USRP-users@lists.ettus.com</a><br>
              <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users=
_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.c=
om/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
            </blockquote>
          </div>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">U=
SRP-users@lists.ettus.com</a><br>
          <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lis=
ts.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
      </div>
      <br>
      <fieldset></fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000001f7cf1059ff6dd69--


--===============6408044196023593895==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6408044196023593895==--

