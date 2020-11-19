Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D422B93AD
	for <lists+usrp-users@lfdr.de>; Thu, 19 Nov 2020 14:31:26 +0100 (CET)
Received: from [::1] (port=37402 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kfk1y-0004mj-OB; Thu, 19 Nov 2020 08:31:22 -0500
Received: from mail-qv1-f48.google.com ([209.85.219.48]:36394)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jbmsdr@gmail.com>) id 1kfk1v-0004fa-4C
 for usrp-users@lists.ettus.com; Thu, 19 Nov 2020 08:31:19 -0500
Received: by mail-qv1-f48.google.com with SMTP id e14so2805404qve.3
 for <usrp-users@lists.ettus.com>; Thu, 19 Nov 2020 05:30:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bkT09fJgcCNTQ+KPqYnxv2H9gf/CrxFExCHohOszpek=;
 b=XvDqUgjXa4klXKNJ/quumSRoZZcClsyLKvWZMN6gdnKpVX2k38/qgBiPIoku5s5Cxl
 RLlVqBtjknbFbk4+rcWPl6m+T20DG57GwSwE1h+79y6ttwEkjlexrzri5FAg2Gkk67Ji
 4bmBy+GQJqjMLZvIR9E3adX0ljKbZJIRYr3DibCS6sdEz5oxjkfF/FEydkLVsHpykn7Q
 IaJrtOcadamTKMMp1fbBF1qfpmFtBoWHUpNXw3wPW5NO5FDZlWvDwQgUTk2pm+4WtGgd
 Vwl+PzTXinfqEjFKeEH2p5zv0nyzCZ9HaJYj4GQc8n/B7QQLyXdJQnS+GZMwuG8AUNjy
 Bjfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bkT09fJgcCNTQ+KPqYnxv2H9gf/CrxFExCHohOszpek=;
 b=tj201zYL89MqZ8+ayZBgjg3cQmuk/iCiUywCTKLLD36XdBglKXxBblR+Xsrco1fVko
 8dBqpna7YuKIDfDNN9WupofqIoMoyZEaaEBCuPprIWDyR4JufEMtuQ8hwsKwlm/Nwg5b
 Elz/ama523guOqMKXzZgipxg/qcfiUYXiF2UQp6KAh9CkhbopuCXn7suQnioRAqcF7+A
 ZCOHT/CSn4GM7uqtuJkOkEtutgst+sdiVuicRYElh3YGWxvQ/BFv79pzs8/b6mUgoKXt
 e6jBNXYSqpdr0bGveY6W6T83h7+5+MXoksJYMa9A4Ux1v7cs3HlirCdQoVK1NnKRGvSz
 HDJw==
X-Gm-Message-State: AOAM530keiEAENXxmoE//JgTGffFjsoNqoZg8H5zVjvT4DZ98i6f+I8t
 svYNWV1/Tcd8Ij6ifqENh+jGn9DtgfSYDuGtbbA=
X-Google-Smtp-Source: ABdhPJwhM3gxCFOJEWDA0jEcwZW5N6ZkSiqvFQhKeThHt4o+x+bNsQ1cnlKFMWhaqYTXBprwuL9HpBYA9vE3rRBRbeE=
X-Received: by 2002:a0c:f28d:: with SMTP id k13mr11348339qvl.31.1605792638470; 
 Thu, 19 Nov 2020 05:30:38 -0800 (PST)
MIME-Version: 1.0
References: <CA+1FM8pa+r2V98HZver=btdMVxoNCmrm0O4FXftszhruHLaT2w@mail.gmail.com>
 <5FB59610.5020902@gmail.com>
 <CA+1FM8rYrQ2ukQ39HbzrWw8JbNqSo8a4mCd++J95rTLFWfBGpg@mail.gmail.com>
 <d34d64b6-f36b-664a-93e7-b4a5cd9d1601@comcast.net>
 <CA+1FM8qKfWGRy9iRQeLQp4VzOUdsxq+nm6LHXt=_ei6aodgrMw@mail.gmail.com>
In-Reply-To: <CA+1FM8qKfWGRy9iRQeLQp4VzOUdsxq+nm6LHXt=_ei6aodgrMw@mail.gmail.com>
Date: Thu, 19 Nov 2020 08:30:27 -0500
Message-ID: <CA+1FM8qGkinS3BX+Woa07wWKT0g2vUTxupCrykSMycU2eHHrSg@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============6599775052902014643=="
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

--===============6599775052902014643==
Content-Type: multipart/alternative; boundary="000000000000cc8eee05b475bbe0"

--000000000000cc8eee05b475bbe0
Content-Type: text/plain; charset="UTF-8"

Starting to get an idea what is going on with the startup overflows

First, suppose I have a raw UHD application that does the following:
{
  instantiate usrp object, set freq, gain, samp_rate
  issue stream cmd to start some time in the future (2 sec)
  while(1)
  {
    call _rx_stream->recv()
    print the error code
  }
}

The output of this will be [ timeout, timeout, ... , none, none, ...] in
that it will timeout until the stream starts, then get valid samples
If I then put a very small delay (0.1 seconds in my case) when there is a
timeout, then I see the exact same behavior as in gr-uhd, which is:
[timeout, ..., overflow, overflow(seq), overflow(seq), none, ...] --> the
"ODD"

This corresponds to the behavior of gr-uhd, where inside work(), when
recv() returns a timeout, work() then returns a 0, and the scheduler calls
work again when it feels like it.

So if I modify the work() function of usrp_source_impl.cc to be:
    case ::uhd::rx_metadata_t::ERROR_CODE_TIMEOUT:
        // its ok to timeout, perhaps the user is doing finite streaming
        // return 0;
        return work(noutput_items, input_items, output_items);

Then the work() function keeps trying with no delay, and then there are no
overflows.  Obviously this is not desirable behavior for the general case,
but this is what "made the problem go away" for me.

Josh








On Thu, Nov 19, 2020 at 7:09 AM Josh <jbmsdr@gmail.com> wrote:

> Same deal - with "num_recv_frames=128,master_clock_rate=" +
> str(samp_rate*4) I still get "ODD", just about every time.
>
> On Thu, Nov 19, 2020 at 6:52 AM Ron Economos via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> The automatic setting of the master clock seems to be getting in the way
>> after the PPS transition. Try explicitly setting the master clock.
>>
>> "num_recv_frames=128,master_clock_rate=" + str(samp_rate*4)
>>
>> Ron
>> On 11/19/20 03:33, Josh via USRP-users wrote:
>>
>> Marcus,
>>
>> This is naked hardware - B210 usb into a pretty beefy laptop running
>> Ubuntu 20.04, GNU Radio latest master (3.9)
>> Even with num_recv_frames = 128, still getting "ODD" at startup of the
>> flowgraph
>>
>> Any other optimizations I should be tuning?  Getting no overruns in the
>> steady state, just at startup.
>>
>> Flowgraph is attached.
>>
>> Josh
>>
>> On Wed, Nov 18, 2020 at 4:46 PM Marcus D. Leech via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> On 11/18/2020 07:27 AM, Josh via USRP-users wrote:
>>>
>>> I'm seeing a difference in behavior between gr-uhd and plain uhd c++ api:
>>>
>>> Setup:
>>> B210, 2 channels, 5MSPS, master_clock_rate 20MSPS, PPS sync
>>> Receive only flowgraph
>>>
>>> With gr-uhd, there is always a "OOD" when the flowgraph first starts
>>>
>>> But, if I replicate the setup in a simple compiled program using the uhd
>>> API with all the same settings, this never occurs.
>>>
>>> So my question is - is the GR scheduler doing something at the beginning
>>> of the flowgraph that delays the work() calls and causes overflows, and are
>>> there settings I use to mitigate this?  My problem is that once these
>>> overflows occur, I can't trust my timing synchronization on the received
>>> samples (or have to do further calculations on the rx_time tags).
>>>
>>> Thanks,
>>> Josh
>>>
>>>
>>> _______________________________________________
>>>
>>>
>>> Try specifying "num_recv_frames=128" in your device arguments.
>>>
>>> Also, are you running this on naked hardware or through a VM?
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>> _______________________________________________
>> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000cc8eee05b475bbe0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Starting to get an idea what is going on with the sta=
rtup overflows</div><div><br></div><div>First, suppose I have a raw UHD app=
lication that does the following:</div><div>{</div><div>=C2=A0 instantiate =
usrp object, set freq, gain, samp_rate</div><div>=C2=A0 issue stream cmd to=
 start some time in the future (2 sec)</div><div>=C2=A0 while(1)</div><div>=
=C2=A0 {</div><div>=C2=A0=C2=A0=C2=A0 call _rx_stream-&gt;recv()</div><div>=
=C2=A0=C2=A0=C2=A0 print the error code<br></div><div>=C2=A0 }<br></div><di=
v>}<br></div><div><br></div><div>The output of this will be [ timeout, time=
out, ... , none, none, ...] in that it will timeout until the stream starts=
, then get valid samples</div><div>If I then put a very small delay (0.1 se=
conds in my case) when there is a timeout, then I see the exact same behavi=
or as in gr-uhd, which is:</div><div>[timeout, ..., overflow, overflow(seq)=
, overflow(seq), none, ...] --&gt; the &quot;ODD&quot;</div><div><br></div>=
<div>This corresponds to the behavior of gr-uhd, where inside work(), when =
recv() returns a timeout, work() then returns a 0, and the scheduler calls =
work again when it feels like it.</div><div><br></div><div>So if I modify t=
he work() function of usrp_source_impl.cc to be:</div><div>=C2=A0 =C2=A0 ca=
se ::uhd::rx_metadata_t::ERROR_CODE_TIMEOUT:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 // its ok to timeout, perhaps the user is doing finite streaming<br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 // return 0;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return wo=
rk(noutput_items, input_items, output_items);</div><div><br></div><div>Then=
 the work() function keeps trying with no delay, and then there are no over=
flows.=C2=A0 Obviously this is not desirable behavior for the general case,=
 but this is what &quot;made the problem go away&quot; for me.</div><div><b=
r></div><div>Josh<br></div><div><br></div><div><br></div><div><br></div><di=
v><br></div><div><br></div><div><br></div><div><br></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 19, 20=
20 at 7:09 AM Josh &lt;<a href=3D"mailto:jbmsdr@gmail.com">jbmsdr@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr"><div>Same deal - with &quot;num_recv_frames=3D128,master_c=
lock_rate=3D&quot; + str(samp_rate*4) I still get &quot;ODD&quot;, just abo=
ut every time.=C2=A0 <br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Thu, Nov 19, 2020 at 6:52 AM Ron Economos=
 via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D=
"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">
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
</blockquote></div>

--000000000000cc8eee05b475bbe0--


--===============6599775052902014643==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6599775052902014643==--

