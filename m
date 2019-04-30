Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D6DFD56
	for <lists+usrp-users@lfdr.de>; Tue, 30 Apr 2019 18:00:22 +0200 (CEST)
Received: from [::1] (port=36378 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hLVB6-0001Oz-Lr; Tue, 30 Apr 2019 12:00:20 -0400
Received: from mail-lj1-f178.google.com ([209.85.208.178]:39463)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <luke.whittlesey@gmail.com>)
 id 1hLVAJ-0000v4-Jt
 for usrp-users@lists.ettus.com; Tue, 30 Apr 2019 12:00:01 -0400
Received: by mail-lj1-f178.google.com with SMTP id q10so13290813ljc.6
 for <usrp-users@lists.ettus.com>; Tue, 30 Apr 2019 08:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=glUqbeM4fN+Nwz2FbycWuIZfcz/mu37RRyHnz8epTLA=;
 b=tBWjO2/9hmxLYborxd4P9zWT4f9ImGtQQj1lhxG/+vskJC0YSU/t4jcO52n6qZDmww
 YLKbs2SdEC+lkoDjiN7nCieG8S4nj9SuinqS0Q/twcCzvl5aMhRHVKf8lnxhU/fLTOM2
 88m6t3lBLeiedom3dd3SvzJgYlRZb8oHUbHUG+8fJkCAJTA5NHJaG6RIuDTiX4vb4swH
 VTYEk55YiCKgeMrZBGp44KDXVloPPb+6Lj+D9rDNNAKqEb5VzcpZ7V2PcdahXe4NFVix
 vJT0Ax6rIN4qcluf2R+sRm7/A2tJG73MWUql60JDGJSzk3/8UGy8vY8E81vBVrR2N9/J
 qs2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=glUqbeM4fN+Nwz2FbycWuIZfcz/mu37RRyHnz8epTLA=;
 b=o0WuEN8J5J5pqb8WDG6vt/wkCgI0rNibQPFFXV+Q9VSX5xx1HDaCLWgIwACH93pP2f
 JGYKwyIXa5kFYQ/RnHDvbxKieMJq/WGXIixOziZXwC5hfzYgMZsLYBFnt67HeHeyvMHB
 gPi70205biSmrnBOfFwAreKU7NSkx7Z9KkiJ5SalJQv3BacSCNeLHKESQ4RlKfTKODth
 j2i6uD1srqSXma0oGIT2blsga/kBBeQ4twf1bA/PIwz9cyUrdPCrSWSytZ7OllCOiYa4
 aH1aHXB2tYcuCrfhY/9hPOLFelOtjPxz1F3nujjcd40eitgjr8PuhQN3jnTYFeeltf7W
 IWBA==
X-Gm-Message-State: APjAAAU34rak0hvPEd8H036Cak9JEjNfnt1Y+EGIfNq3umEnZnAgpuaY
 TltLz3IazVIEe1eI5crc6FHqTC/7pfHNTSwVI+g=
X-Google-Smtp-Source: APXvYqx9ugkNc6HLHIC4gIv6Lyub84OZmAgFEZufD9bipGxfKksZrAyaGuOYSyJWvIQbSrpxDYqmmnm4IbMQj8j35QI=
X-Received: by 2002:a2e:874d:: with SMTP id q13mr15351645ljj.110.1556639930139; 
 Tue, 30 Apr 2019 08:58:50 -0700 (PDT)
MIME-Version: 1.0
References: <BL0PR12MB23407D3418F13ABDC01D6826AF390@BL0PR12MB2340.namprd12.prod.outlook.com>
 <5CC797D5.1070401@gmail.com>
 <BL0PR12MB23408FC518AA7EBAE2D53176AF3A0@BL0PR12MB2340.namprd12.prod.outlook.com>
 <5CC8610E.5060007@gmail.com>
 <CA+ce6i2y0kRUgMnPHYo_6=0A4EbdWVWU236o3LEgjfRKuB34eA@mail.gmail.com>
 <5CC86EBB.2030902@gmail.com>
In-Reply-To: <5CC86EBB.2030902@gmail.com>
Date: Tue, 30 Apr 2019 11:58:25 -0400
Message-ID: <CA+ce6i2LVuHZbp_ro+NFwyGQVL=_y5S2k8QJWQVXdKm=kSr9OA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] E312 wrong sample rate
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
From: Luke Whittlesey via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Luke Whittlesey <luke.whittlesey@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7943889693366454013=="
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

--===============7943889693366454013==
Content-Type: multipart/alternative; boundary="0000000000001448be0587c17a49"

--0000000000001448be0587c17a49
Content-Type: text/plain; charset="UTF-8"

> but there are diminishing returns
True, it's only useful to the dynamic range of that 12-bit ADC.
Is there a recommended minimum sample rate for the E310/12?
Would this be dictated by the most narrow pre-selection filter?

On Tue, Apr 30, 2019 at 11:50 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 04/30/2019 11:43 AM, Luke Whittlesey wrote:
>
> Just my 2cents, but I think that sometimes running at a higher ADC sample
> rate and then digitally filtering may be desirable. I can't say anything
> specifically about this example with the E312 because I'm not familiar with
> the pre-selection filters and the analog filters in the AD9361, but a
> higher sample rate generally allows the analog filter more rolloff before
> the ADC aliases that energy back in.
>
> Yes, and you end up with higher dynamic range as well--but there are
> diminishing returns.
>
>
> On Tue, Apr 30, 2019 at 10:53 AM Marcus D. Leech via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> On 04/30/2019 09:15 AM, Jason Matusiak wrote:
>>
>> I guess I would need a block to count samples if I am going to a null
>> sink?  Otherwise I am not sure how to guage how many samples have passed.
>>
>> I was just thinking to look at runtime--for a large enough sample-count,
>> the initial startup overhead would be a small fraction of the total
>>   runtime.
>>
>> You could use the "benchmark_rate" tool to do this as well.
>>
>>
>> Well, this is probably ignorant of me, but I assumed a higher master
>> clock rate would allow me some sort of speed benefit somewhere.  I guess I
>> can't say what since it has nothing to do with the Linux CPU speed....
>> What is the benefit to running at a slower rate?
>>
>> No, master_clock_rate has *nothing* to do with CPU speed.  It just
>> controls the rate that the ADC/DSP/DDC chain runs at in the radio section.
>>   There's nothing inherently *wrong* with running at a very high
>> decimation ratio, it's just that it isn't *necessary*.
>>
>>
>>
>> ------------------------------
>> *From:* USRP-users <usrp-users-bounces@lists.ettus.com>
>> <usrp-users-bounces@lists.ettus.com> on behalf of Marcus D. Leech via
>> USRP-users <usrp-users@lists.ettus.com> <usrp-users@lists.ettus.com>
>> *Sent:* Monday, April 29, 2019 8:33 PM
>> *To:* usrp-users@lists.ettus.com
>> *Subject:* Re: [USRP-users] E312 wrong sample rate
>>
>> On 04/29/2019 03:28 PM, Jason Matusiak via USRP-users wrote:
>>
>> I was debugging a problem with a flowgraph when I realized that I wasn't
>> getting the amount of samples I expected passing out of the USRP source
>> block.  If I set a sample rate too low, it tells me it has to set the
>> sample rate to 0.125MSps.  Currently I have a single stream from my source
>> block, 30MHz clock rate, 500kHz sample rate.
>>
>> If I run for 20 seconds streaming the data to a file (unbuffered set to
>> off) as a complex, I would expect to see 20s * 8B * 500KHz = 80MB of data
>> in the file.
>>
>> Instead, running it empirically (so the numbers will have to be ballpark
>> and not exact), I see file size of 116153944.  If I make the assumption
>> that the sample rate was really 500kHz, that means it ran for 29.03s.  This
>> is obviously off by 50%.  If I assume that 10s of data was really
>> collected, that means I had an actual sample rate of 1.451924MSps.
>>
>> If I run these tests with the minimal 125kHz sample rate, I see things
>> off by about double what I would expect.
>>
>> Moving my sample rate around the 1MSps range seems to work closer to what
>> I expect, but of course I can't write files that fast without getting 'O'
>> on the screen.  Ultimately I need to use two receivers, so I don't believe
>> that I can push the clock rate above 30.72MHz.
>>
>> I am running UHD-3_14 with RFNoC enabled (though I am not using RFNoC in
>> this particular flowgraph).  What am I missing here?
>>
>> Have it write to /dev/null, and time how long it takes to gather some
>> large number of samples, and go from there.
>>    If your delivered sample rate is 500ksps, I don't see why you need a
>> master clock rate as high as 30Msps, but perhaps you have
>>    your reasons.
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
>

--0000000000001448be0587c17a49
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>&gt; but there are
    diminishing returns</div><div>True, it&#39;s only useful to the dynamic=
 range of that 12-bit ADC. <br></div><div>Is there a recommended minimum sa=
mple rate for the E310/12? <br></div><div>Would this be dictated by the mos=
t narrow pre-selection filter?<br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 30, 2019 at 11:50 AM Ma=
rcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"gmail-m_1727769788739495707moz-cite-prefix">On 04/30/2019=
 11:43 AM, Luke Whittlesey
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Just my 2cents, but I think that sometimes running
        at a higher ADC sample rate and then digitally filtering may be
        desirable. I can&#39;t say anything specifically about this example
        with the E312 because I&#39;m not familiar with the pre-selection
        filters and the analog filters in the AD9361, but a higher
        sample rate generally allows the analog filter more rolloff
        before the ADC aliases that energy back in.<br>
      </div>
    </blockquote>
    Yes, and you end up with higher dynamic range as well--but there are
    diminishing returns.<br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 30, 2019 at 10:53
          AM Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF">
            <div class=3D"gmail-m_1727769788739495707gmail-m_-6842141528856=
248305moz-cite-prefix">On
              04/30/2019 09:15 AM, Jason Matusiak wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;=
font-size:12pt;color:rgb(0,0,0)">
                I guess I would need a block to count samples if I am
                going to a null sink?=C2=A0 Otherwise I am not sure how to
                guage how many samples have passed.</div>
            </blockquote>
            I was just thinking to look at runtime--for a large enough
            sample-count, the initial startup overhead would be a small
            fraction of the total<br>
            =C2=A0 runtime.<br>
            <br>
            You could use the &quot;benchmark_rate&quot; tool to do this as=
 well.<br>
            <br>
            <blockquote type=3D"cite">
              <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;=
font-size:12pt;color:rgb(0,0,0)">
                <br>
              </div>
              <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;=
font-size:12pt;color:rgb(0,0,0)">
                Well, this is probably ignorant of me, but I assumed a
                higher master clock rate would allow me some sort of
                speed benefit somewhere.=C2=A0 I guess I can&#39;t say what=
 since
                it has nothing to do with the Linux CPU speed....=C2=A0 Wha=
t
                is the benefit to running at a slower rate?</div>
            </blockquote>
            No, master_clock_rate has *nothing* to do with CPU speed.=C2=A0
            It just controls the rate that the ADC/DSP/DDC chain runs at
            in the radio section.<br>
            =C2=A0 There&#39;s nothing inherently *wrong* with running at a=
 very
            high decimation ratio, it&#39;s just that it isn&#39;t *necessa=
ry*.<br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <div id=3D"gmail-m_1727769788739495707gmail-m_-68421415288562=
48305Signature">
                <div>
                  <div style=3D"font-family:Calibri,Arial,Helvetica,sans-se=
rif;font-size:12pt;color:rgb(0,0,0)">
                    <br>
                  </div>
                  <hr style=3D"display:inline-block;width:98%">
                  <div id=3D"gmail-m_1727769788739495707gmail-m_-6842141528=
856248305divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=3D"=
Calibri, sans-serif" color=3D"#000000"><b>From:</b>
                      USRP-users <a class=3D"gmail-m_1727769788739495707gma=
il-m_-6842141528856248305moz-txt-link-rfc2396E" href=3D"mailto:usrp-users-b=
ounces@lists.ettus.com" target=3D"_blank">&lt;usrp-users-bounces@lists.ettu=
s.com&gt;</a>
                      on behalf of Marcus D. Leech via USRP-users <a class=
=3D"gmail-m_1727769788739495707gmail-m_-6842141528856248305moz-txt-link-rfc=
2396E" href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">&lt;usr=
p-users@lists.ettus.com&gt;</a><br>
                      <b>Sent:</b> Monday, April 29, 2019 8:33 PM<br>
                      <b>To:</b> <a class=3D"gmail-m_1727769788739495707gma=
il-m_-6842141528856248305moz-txt-link-abbreviated" href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
                      <b>Subject:</b> Re: [USRP-users] E312 wrong sample
                      rate</font>
                    <div>=C2=A0</div>
                  </div>
                  <div style=3D"background-color:rgb(255,255,255)">
                    <div class=3D"gmail-m_1727769788739495707gmail-m_-68421=
41528856248305x_moz-cite-prefix">On
                      04/29/2019 03:28 PM, Jason Matusiak via USRP-users
                      wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div style=3D"font-family:Calibri,Arial,Helvetica,san=
s-serif;font-size:12pt;color:rgb(0,0,0)">
                        I was debugging a problem with a flowgraph when
                        I realized that I wasn&#39;t getting the amount of
                        samples I expected passing out of the USRP
                        source block.=C2=A0 If I set a sample rate too low,
                        it tells me it has to set the sample rate to
                        0.125MSps.=C2=A0 Currently I have a single stream
                        from my source block, 30MHz clock rate, 500kHz
                        sample rate.</div>
                      <div style=3D"font-family:Calibri,Arial,Helvetica,san=
s-serif;font-size:12pt;color:rgb(0,0,0)">
                        <br>
                      </div>
                      <div style=3D"font-family:Calibri,Arial,Helvetica,san=
s-serif;font-size:12pt;color:rgb(0,0,0)">
                        If I run for 20 seconds streaming the data to a
                        file (unbuffered set to off) as a complex, I
                        would expect to see 20s * 8B * 500KHz =3D 80MB of
                        data in the file.</div>
                      <div style=3D"font-family:Calibri,Arial,Helvetica,san=
s-serif;font-size:12pt;color:rgb(0,0,0)">
                        <br>
                      </div>
                      <div style=3D"font-family:Calibri,Arial,Helvetica,san=
s-serif;font-size:12pt;color:rgb(0,0,0)">
                        Instead, running it empirically (so the numbers
                        will have to be ballpark and not exact), I see
                        file size of=C2=A0116153944.=C2=A0 If I make the
                        assumption that the sample rate was really
                        500kHz, that means it ran for 29.03s.=C2=A0 This is
                        obviously off by 50%.=C2=A0 If I assume that 10s of
                        data was really collected, that means I had an
                        actual sample rate of 1.451924MSps.</div>
                      <div style=3D"font-family:Calibri,Arial,Helvetica,san=
s-serif;font-size:12pt;color:rgb(0,0,0)">
                        <br>
                      </div>
                      <div style=3D"font-family:Calibri,Arial,Helvetica,san=
s-serif;font-size:12pt;color:rgb(0,0,0)">
                        If I run these tests with the minimal 125kHz
                        sample rate, I see things off by about double
                        what I would expect.=C2=A0=C2=A0</div>
                      <div style=3D"font-family:Calibri,Arial,Helvetica,san=
s-serif;font-size:12pt;color:rgb(0,0,0)">
                        <br>
                      </div>
                      <div style=3D"font-family:Calibri,Arial,Helvetica,san=
s-serif;font-size:12pt;color:rgb(0,0,0)">
                        Moving my sample rate around the 1MSps range
                        seems to work closer to what I expect, but of
                        course I can&#39;t write files that fast without
                        getting &#39;O&#39; on the screen.=C2=A0 Ultimately=
 I need to
                        use two receivers, so I don&#39;t believe that I ca=
n
                        push the clock rate above 30.72MHz.=C2=A0=C2=A0</di=
v>
                      <div style=3D"font-family:Calibri,Arial,Helvetica,san=
s-serif;font-size:12pt;color:rgb(0,0,0)">
                        <br>
                      </div>
                      <div style=3D"font-family:Calibri,Arial,Helvetica,san=
s-serif;font-size:12pt;color:rgb(0,0,0)">
                        I am running UHD-3_14 with RFNoC enabled (though
                        I am not using RFNoC in this particular
                        flowgraph).=C2=A0 What am I missing here?</div>
                      <br>
                    </blockquote>
                    Have it write to /dev/null, and time how long it
                    takes to gather some large number of samples, and go
                    from there.<br>
                    =C2=A0=C2=A0 If your delivered sample rate is 500ksps, =
I don&#39;t
                    see why you need a master clock rate as high as
                    30Msps, but perhaps you have<br>
                    =C2=A0=C2=A0 your reasons.=C2=A0 <br>
                    <br>
                  </div>
                </div>
              </div>
            </blockquote>
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
    </blockquote>
    <br>
  </div>

</blockquote></div>

--0000000000001448be0587c17a49--


--===============7943889693366454013==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7943889693366454013==--

