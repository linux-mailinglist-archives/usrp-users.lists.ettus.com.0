Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 191982B9215
	for <lists+usrp-users@lfdr.de>; Thu, 19 Nov 2020 13:10:27 +0100 (CET)
Received: from [::1] (port=36786 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kfild-00005k-Gj; Thu, 19 Nov 2020 07:10:25 -0500
Received: from mail-qk1-f174.google.com ([209.85.222.174]:38566)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jbmsdr@gmail.com>) id 1kfila-0008P6-4Z
 for usrp-users@lists.ettus.com; Thu, 19 Nov 2020 07:10:22 -0500
Received: by mail-qk1-f174.google.com with SMTP id 11so5022225qkd.5
 for <usrp-users@lists.ettus.com>; Thu, 19 Nov 2020 04:10:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NTlOqZPHrL561gRq0IZ/RLlHdaNv/Ausb0B5LDxDkoE=;
 b=ScZXe0XbqSCSSjncn9HP7G/ew3b72DEnyhNcTSbPb8UySX+Opm+7/ows9EV65TdATa
 deZeSVLrQcsreIT7rp8WhCvvs9e/5VHVr+5vsN0J7SI5vSFVLs4i5SMA/UO2O7fm5P3e
 sTapAIXAEy5cd3SZKhoGMvdyHTH9hBNYhzl9UqNEl5g2Qiggkh3WFSJe7MiVqg5YyaM7
 /UcRzYsryxW1d2FyStqeqMZ4Gf1bZbokyM0kqIabs8+El97Lnnch9BKkUTOdZfbhBNmK
 M4T99d+m1xTK/tm8M0OHQh6uwfTlrig0UEq0EwaQK4ec2f9uYj3ini5hpg2ajlQLPPS2
 WfkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NTlOqZPHrL561gRq0IZ/RLlHdaNv/Ausb0B5LDxDkoE=;
 b=EaoTDj7BTnl4GkrNzgSRnApOm1FPKVOatqR9HQowGQ37Dl7YqXtUsV2JNcurtt66OR
 /kPrciFNvscrOxJra9cR10OlmY+LMS3K76yNNPqLaWf5t+c04Ed4jbjEMf5/x9HU9LOe
 hqgDpdnfQVY8zjcTwAqBbrl+Ibfozl0TMrzQyEauI3QDJN7gOMFDtMr8EFl6jcCJtjI0
 JdnIHH7jeOvqgDj7XFXy7kY5y4HkFiNy8SdP4elM+RO1yms3TjypXlfpLqrN2Ou3ULbu
 rXK7OH/eR2KegLLfeeQXiPOPSFKwi7hTUkmne9SQC7QQt+rm2ndqKpzAjElM32dK4cMq
 aovQ==
X-Gm-Message-State: AOAM5335ovU5gAt2QR4rTR0Y/4TUaLtrzWBk7E2elrojtnY0bXPpvPhf
 62al2WEkSn9qs/AIUBciSeRctV339WV4UILC8PEIp8jUgpE=
X-Google-Smtp-Source: ABdhPJyP1PThy27tW8QVXVOkDBJxzXQAxf/QR4ijur4V+2KQWK5I/FY3cMfBqMv8dfLp5rX0xzJQBFHixmqTec+/Ca0=
X-Received: by 2002:a37:aa93:: with SMTP id
 t141mr10265567qke.400.1605787781694; 
 Thu, 19 Nov 2020 04:09:41 -0800 (PST)
MIME-Version: 1.0
References: <CA+1FM8pa+r2V98HZver=btdMVxoNCmrm0O4FXftszhruHLaT2w@mail.gmail.com>
 <5FB59610.5020902@gmail.com>
 <CA+1FM8rYrQ2ukQ39HbzrWw8JbNqSo8a4mCd++J95rTLFWfBGpg@mail.gmail.com>
 <d34d64b6-f36b-664a-93e7-b4a5cd9d1601@comcast.net>
In-Reply-To: <d34d64b6-f36b-664a-93e7-b4a5cd9d1601@comcast.net>
Date: Thu, 19 Nov 2020 07:09:30 -0500
Message-ID: <CA+1FM8qKfWGRy9iRQeLQp4VzOUdsxq+nm6LHXt=_ei6aodgrMw@mail.gmail.com>
To: Ron Economos <w6rz@comcast.net>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Overflows at flowgraph start using gr-uhd
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
From: Josh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Josh <jbmsdr@gmail.com>
Content-Type: multipart/mixed; boundary="===============8346941040946923753=="
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

--===============8346941040946923753==
Content-Type: multipart/alternative; boundary="00000000000050097005b4749acd"

--00000000000050097005b4749acd
Content-Type: text/plain; charset="UTF-8"

Same deal - with "num_recv_frames=128,master_clock_rate=" +
str(samp_rate*4) I still get "ODD", just about every time.

On Thu, Nov 19, 2020 at 6:52 AM Ron Economos via USRP-users <
usrp-users@lists.ettus.com> wrote:

> The automatic setting of the master clock seems to be getting in the way
> after the PPS transition. Try explicitly setting the master clock.
>
> "num_recv_frames=128,master_clock_rate=" + str(samp_rate*4)
>
> Ron
> On 11/19/20 03:33, Josh via USRP-users wrote:
>
> Marcus,
>
> This is naked hardware - B210 usb into a pretty beefy laptop running
> Ubuntu 20.04, GNU Radio latest master (3.9)
> Even with num_recv_frames = 128, still getting "ODD" at startup of the
> flowgraph
>
> Any other optimizations I should be tuning?  Getting no overruns in the
> steady state, just at startup.
>
> Flowgraph is attached.
>
> Josh
>
> On Wed, Nov 18, 2020 at 4:46 PM Marcus D. Leech via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> On 11/18/2020 07:27 AM, Josh via USRP-users wrote:
>>
>> I'm seeing a difference in behavior between gr-uhd and plain uhd c++ api:
>>
>> Setup:
>> B210, 2 channels, 5MSPS, master_clock_rate 20MSPS, PPS sync
>> Receive only flowgraph
>>
>> With gr-uhd, there is always a "OOD" when the flowgraph first starts
>>
>> But, if I replicate the setup in a simple compiled program using the uhd
>> API with all the same settings, this never occurs.
>>
>> So my question is - is the GR scheduler doing something at the beginning
>> of the flowgraph that delays the work() calls and causes overflows, and are
>> there settings I use to mitigate this?  My problem is that once these
>> overflows occur, I can't trust my timing synchronization on the received
>> samples (or have to do further calculations on the rx_time tags).
>>
>> Thanks,
>> Josh
>>
>>
>> _______________________________________________
>>
>>
>> Try specifying "num_recv_frames=128" in your device arguments.
>>
>> Also, are you running this on naked hardware or through a VM?
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000050097005b4749acd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Same deal - with &quot;num_recv_frames=3D128,master_c=
lock_rate=3D&quot; + str(samp_rate*4) I still get &quot;ODD&quot;, just abo=
ut every time.=C2=A0 <br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Thu, Nov 19, 2020 at 6:52 AM Ron Economos=
 via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-user=
s@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">
 =20
   =20
 =20
  <div>
    <p>The automatic setting of the master clock seems to be getting in
      the way after the PPS transition. Try explicitly setting the
      master clock.<br>
    </p>
    <p>&quot;num_recv_frames=3D128,master_clock_rate=3D&quot; + str(samp_ra=
te*4)</p>
    <p>Ron<br>
    </p>
    <div>On 11/19/20 03:33, Josh via USRP-users
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Marcus,</div>
        <div><br>
        </div>
        <div>This is naked hardware - B210 usb into a pretty beefy
          laptop running Ubuntu 20.04, GNU Radio latest master (3.9)<br>
        </div>
        <div>Even with num_recv_frames =3D 128, still getting &quot;ODD&quo=
t; at
          startup of the flowgraph</div>
        <div><br>
        </div>
        <div>Any other optimizations I should be tuning?=C2=A0 Getting no
          overruns in the steady state, just at startup.</div>
        <div><br>
        </div>
        <div>Flowgraph is attached.</div>
        <div><br>
        </div>
        <div>Josh<br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 18, 2020 at 4:46
          PM Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF">
            <div>On 11/18/2020 07:27 AM, Josh via USRP-users wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>I&#39;m seeing a difference in behavior between gr-uhd
                  and plain uhd c++ api:</div>
                <div><br>
                </div>
                <div>Setup:</div>
                <div>B210, 2 channels, 5MSPS, master_clock_rate 20MSPS,
                  PPS sync<br>
                </div>
                <div>Receive only flowgraph</div>
                <div><br>
                </div>
                <div>With gr-uhd, there is always a &quot;OOD&quot; when th=
e
                  flowgraph first starts</div>
                <div><br>
                </div>
                <div>But, if I replicate the setup in a simple compiled
                  program using the uhd API with all the same settings,
                  this never occurs.</div>
                <div><br>
                </div>
                <div>So my question is - is the GR scheduler doing
                  something at the beginning of the flowgraph that
                  delays the work() calls and causes overflows, and are
                  there settings I use to mitigate this?=C2=A0 My problem i=
s
                  that once these overflows occur, I can&#39;t trust my
                  timing synchronization on the received samples (or
                  have to do further calculations on the rx_time tags).</di=
v>
                <div><br>
                </div>
                <div>Thanks,</div>
                <div>Josh<br>
                </div>
              </div>
              <br>
              <fieldset></fieldset>
              <br>
              <pre>_______________________________________________

</pre>
            </blockquote>
            Try specifying &quot;num_recv_frames=3D128&quot; in your device
            arguments.<br>
            <br>
            Also, are you running this on naked hardware or through a
            VM? <br>
            <br>
            <br>
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
      <pre>_______________________________________________
USRP-users mailing list
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a>
</pre>
    </blockquote>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000050097005b4749acd--


--===============8346941040946923753==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8346941040946923753==--

