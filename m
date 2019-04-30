Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F0CFD37
	for <lists+usrp-users@lfdr.de>; Tue, 30 Apr 2019 17:51:37 +0200 (CEST)
Received: from [::1] (port=59176 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hLV2e-0000CK-Bx; Tue, 30 Apr 2019 11:51:36 -0400
Received: from mail-qk1-f172.google.com ([209.85.222.172]:35838)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <patchvonbraun@gmail.com>)
 id 1hLV25-0008W3-EK
 for usrp-users@lists.ettus.com; Tue, 30 Apr 2019 11:51:31 -0400
Received: by mail-qk1-f172.google.com with SMTP id n81so8460025qke.2
 for <usrp-users@lists.ettus.com>; Tue, 30 Apr 2019 08:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=V1Lgmi39cQqWxXKEfG88WUFUYev3e6ihHVx5mz6eQxc=;
 b=CXhgpznBTUi5NskHib6UrXw72cXxm+O8YrXWko8lIARqcbsBaL+Z6+jXTisgtDllU3
 Gd4Tl3tva0UP4HbQj6fWXvmorh95l6xBHLOXik4wsjnKSXleuN7hyvkV3vksXFHq/Acw
 Wm7hf7/QDi4PhjR2LxYXKBUzmCdXFix/CE+kZmhVp82/UgtLzzF2pO3nlZoXpC0/EFHd
 6SSebd+SlHfRZNvLVeEMrc64FG+CGp7oXfjgfrkTTb7A8RiGvtoGTKnuqZ4OvFnO0PEz
 tjIWq603US9ViO2XZCXbaJCDJKgpYwAv71CgU6A2c0f6WigaiKwIhnpILMgfcf13Yruj
 H2Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=V1Lgmi39cQqWxXKEfG88WUFUYev3e6ihHVx5mz6eQxc=;
 b=sixLraZ1eF61V+mXoOvytpQICuPyKIkJIJizFAfQH0/N93e/8db/xa4nswCCQxO2Kj
 yOZZPV8xPQq9lsgEeo4J0KgNJsreyXccZ8KAMmbqrvR0HgcZsvAKUIgWlhOsd987/PqN
 DEMCaX99232HXPYTaYceKR9edgfI223SbMQbnKpLDXAy8zR4CCM5eUqJg5NgDY7oS/rh
 45/R6Uq2vy1BZBMBXun10yZ4yaiPLG4XSGr6rnIKKGXgSiF/HaHXvgI1rdXhz2V1i5Pg
 Jssn6R4hsJKDMWZOXYGvwaoiL5K8A+qKRGTBqJhrHh+VKBX16qW6hOokY66buP7UOd8P
 8aaQ==
X-Gm-Message-State: APjAAAUg/gsCpw3pue1Xos4bk0w2WEAwbZyoCCqMQzUrP0lqz5a9nzPN
 cMHpLbStJ6aXkSnHHQ4UdFQz4yo3sE7LAQ==
X-Google-Smtp-Source: APXvYqwNuyXv5mC7Y6/WW0qGhB5roJqz75w0KHxCsaeYGwlXQyyWabocpedgeOV/0cuD8IZ1kbDIsA==
X-Received: by 2002:ae9:de87:: with SMTP id s129mr50058955qkf.63.1556639420469; 
 Tue, 30 Apr 2019 08:50:20 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id
 y189sm10344605qke.34.2019.04.30.08.50.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Apr 2019 08:50:19 -0700 (PDT)
Message-ID: <5CC86EBB.2030902@gmail.com>
Date: Tue, 30 Apr 2019 11:50:19 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Luke Whittlesey <luke.whittlesey@gmail.com>
References: <BL0PR12MB23407D3418F13ABDC01D6826AF390@BL0PR12MB2340.namprd12.prod.outlook.com>
 <5CC797D5.1070401@gmail.com>
 <BL0PR12MB23408FC518AA7EBAE2D53176AF3A0@BL0PR12MB2340.namprd12.prod.outlook.com>
 <5CC8610E.5060007@gmail.com>
 <CA+ce6i2y0kRUgMnPHYo_6=0A4EbdWVWU236o3LEgjfRKuB34eA@mail.gmail.com>
In-Reply-To: <CA+ce6i2y0kRUgMnPHYo_6=0A4EbdWVWU236o3LEgjfRKuB34eA@mail.gmail.com>
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6956992327592919215=="
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

This is a multi-part message in MIME format.
--===============6956992327592919215==
Content-Type: multipart/alternative;
 boundary="------------030506090307040009020409"

This is a multi-part message in MIME format.
--------------030506090307040009020409
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/30/2019 11:43 AM, Luke Whittlesey wrote:
> Just my 2cents, but I think that sometimes running at a higher ADC 
> sample rate and then digitally filtering may be desirable. I can't say 
> anything specifically about this example with the E312 because I'm not 
> familiar with the pre-selection filters and the analog filters in the 
> AD9361, but a higher sample rate generally allows the analog filter 
> more rolloff before the ADC aliases that energy back in.
Yes, and you end up with higher dynamic range as well--but there are 
diminishing returns.

>
> On Tue, Apr 30, 2019 at 10:53 AM Marcus D. Leech via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     On 04/30/2019 09:15 AM, Jason Matusiak wrote:
>>     I guess I would need a block to count samples if I am going to a
>>     null sink?  Otherwise I am not sure how to guage how many samples
>>     have passed.
>     I was just thinking to look at runtime--for a large enough
>     sample-count, the initial startup overhead would be a small
>     fraction of the total
>       runtime.
>
>     You could use the "benchmark_rate" tool to do this as well.
>
>>
>>     Well, this is probably ignorant of me, but I assumed a higher
>>     master clock rate would allow me some sort of speed benefit
>>     somewhere.  I guess I can't say what since it has nothing to do
>>     with the Linux CPU speed....  What is the benefit to running at a
>>     slower rate?
>     No, master_clock_rate has *nothing* to do with CPU speed. It just
>     controls the rate that the ADC/DSP/DDC chain runs at in the radio
>     section.
>       There's nothing inherently *wrong* with running at a very high
>     decimation ratio, it's just that it isn't *necessary*.
>
>
>>
>>     ------------------------------------------------------------------------
>>     *From:* USRP-users <usrp-users-bounces@lists.ettus.com>
>>     <mailto:usrp-users-bounces@lists.ettus.com> on behalf of Marcus
>>     D. Leech via USRP-users <usrp-users@lists.ettus.com>
>>     <mailto:usrp-users@lists.ettus.com>
>>     *Sent:* Monday, April 29, 2019 8:33 PM
>>     *To:* usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>
>>     *Subject:* Re: [USRP-users] E312 wrong sample rate
>>     On 04/29/2019 03:28 PM, Jason Matusiak via USRP-users wrote:
>>>     I was debugging a problem with a flowgraph when I realized that
>>>     I wasn't getting the amount of samples I expected passing out of
>>>     the USRP source block.  If I set a sample rate too low, it tells
>>>     me it has to set the sample rate to 0.125MSps.  Currently I have
>>>     a single stream from my source block, 30MHz clock rate, 500kHz
>>>     sample rate.
>>>
>>>     If I run for 20 seconds streaming the data to a file (unbuffered
>>>     set to off) as a complex, I would expect to see 20s * 8B *
>>>     500KHz = 80MB of data in the file.
>>>
>>>     Instead, running it empirically (so the numbers will have to be
>>>     ballpark and not exact), I see file size of 116153944.  If I
>>>     make the assumption that the sample rate was really 500kHz, that
>>>     means it ran for 29.03s.  This is obviously off by 50%.  If I
>>>     assume that 10s of data was really collected, that means I had
>>>     an actual sample rate of 1.451924MSps.
>>>
>>>     If I run these tests with the minimal 125kHz sample rate, I see
>>>     things off by about double what I would expect.
>>>
>>>     Moving my sample rate around the 1MSps range seems to work
>>>     closer to what I expect, but of course I can't write files that
>>>     fast without getting 'O' on the screen.  Ultimately I need to
>>>     use two receivers, so I don't believe that I can push the clock
>>>     rate above 30.72MHz.
>>>
>>>     I am running UHD-3_14 with RFNoC enabled (though I am not using
>>>     RFNoC in this particular flowgraph).  What am I missing here?
>>>
>>     Have it write to /dev/null, and time how long it takes to gather
>>     some large number of samples, and go from there.
>>        If your delivered sample rate is 500ksps, I don't see why you
>>     need a master clock rate as high as 30Msps, but perhaps you have
>>        your reasons.
>>
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--------------030506090307040009020409
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 04/30/2019 11:43 AM, Luke Whittlesey
      wrote:<br>
    </div>
    <blockquote
cite="mid:CA+ce6i2y0kRUgMnPHYo_6=0A4EbdWVWU236o3LEgjfRKuB34eA@mail.gmail.com"
      type="cite">
      <div dir="ltr">Just my 2cents, but I think that sometimes running
        at a higher ADC sample rate and then digitally filtering may be
        desirable. I can't say anything specifically about this example
        with the E312 because I'm not familiar with the pre-selection
        filters and the analog filters in the AD9361, but a higher
        sample rate generally allows the analog filter more rolloff
        before the ADC aliases that energy back in.<br>
      </div>
    </blockquote>
    Yes, and you end up with higher dynamic range as well--but there are
    diminishing returns.<br>
    <br>
    <blockquote
cite="mid:CA+ce6i2y0kRUgMnPHYo_6=0A4EbdWVWU236o3LEgjfRKuB34eA@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Tue, Apr 30, 2019 at 10:53
          AM Marcus D. Leech via USRP-users &lt;<a
            moz-do-not-send="true"
            href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor="#FFFFFF">
            <div class="gmail-m_-6842141528856248305moz-cite-prefix">On
              04/30/2019 09:15 AM, Jason Matusiak wrote:<br>
            </div>
            <blockquote type="cite">
              <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                I guess I would need a block to count samples if I am
                going to a null sink?  Otherwise I am not sure how to
                guage how many samples have passed.</div>
            </blockquote>
            I was just thinking to look at runtime--for a large enough
            sample-count, the initial startup overhead would be a small
            fraction of the total<br>
              runtime.<br>
            <br>
            You could use the "benchmark_rate" tool to do this as well.<br>
            <br>
            <blockquote type="cite">
              <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                <br>
              </div>
              <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                Well, this is probably ignorant of me, but I assumed a
                higher master clock rate would allow me some sort of
                speed benefit somewhere.  I guess I can't say what since
                it has nothing to do with the Linux CPU speed....  What
                is the benefit to running at a slower rate?</div>
            </blockquote>
            No, master_clock_rate has *nothing* to do with CPU speed. 
            It just controls the rate that the ADC/DSP/DDC chain runs at
            in the radio section.<br>
              There's nothing inherently *wrong* with running at a very
            high decimation ratio, it's just that it isn't *necessary*.<br>
            <br>
            <br>
            <blockquote type="cite">
              <div id="gmail-m_-6842141528856248305Signature">
                <div>
                  <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                    <br>
                  </div>
                  <hr style="display:inline-block;width:98%">
                  <div id="gmail-m_-6842141528856248305divRplyFwdMsg"
                    dir="ltr"><font style="font-size:11pt"
                      color="#000000" face="Calibri, sans-serif"><b>From:</b>
                      USRP-users <a moz-do-not-send="true"
                        class="gmail-m_-6842141528856248305moz-txt-link-rfc2396E"
                        href="mailto:usrp-users-bounces@lists.ettus.com"
                        target="_blank">&lt;usrp-users-bounces@lists.ettus.com&gt;</a>
                      on behalf of Marcus D. Leech via USRP-users <a
                        moz-do-not-send="true"
                        class="gmail-m_-6842141528856248305moz-txt-link-rfc2396E"
                        href="mailto:usrp-users@lists.ettus.com"
                        target="_blank">&lt;usrp-users@lists.ettus.com&gt;</a><br>
                      <b>Sent:</b> Monday, April 29, 2019 8:33 PM<br>
                      <b>To:</b> <a moz-do-not-send="true"
                        class="gmail-m_-6842141528856248305moz-txt-link-abbreviated"
                        href="mailto:usrp-users@lists.ettus.com"
                        target="_blank">usrp-users@lists.ettus.com</a><br>
                      <b>Subject:</b> Re: [USRP-users] E312 wrong sample
                      rate</font>
                    <div> </div>
                  </div>
                  <div style="background-color:rgb(255,255,255)">
                    <div
                      class="gmail-m_-6842141528856248305x_moz-cite-prefix">On
                      04/29/2019 03:28 PM, Jason Matusiak via USRP-users
                      wrote:<br>
                    </div>
                    <blockquote type="cite">
                      <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                        I was debugging a problem with a flowgraph when
                        I realized that I wasn't getting the amount of
                        samples I expected passing out of the USRP
                        source block.  If I set a sample rate too low,
                        it tells me it has to set the sample rate to
                        0.125MSps.  Currently I have a single stream
                        from my source block, 30MHz clock rate, 500kHz
                        sample rate.</div>
                      <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                        <br>
                      </div>
                      <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                        If I run for 20 seconds streaming the data to a
                        file (unbuffered set to off) as a complex, I
                        would expect to see 20s * 8B * 500KHz = 80MB of
                        data in the file.</div>
                      <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                        <br>
                      </div>
                      <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                        Instead, running it empirically (so the numbers
                        will have to be ballpark and not exact), I see
                        file size of 116153944.  If I make the
                        assumption that the sample rate was really
                        500kHz, that means it ran for 29.03s.  This is
                        obviously off by 50%.  If I assume that 10s of
                        data was really collected, that means I had an
                        actual sample rate of 1.451924MSps.</div>
                      <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                        <br>
                      </div>
                      <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                        If I run these tests with the minimal 125kHz
                        sample rate, I see things off by about double
                        what I would expect.  </div>
                      <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                        <br>
                      </div>
                      <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                        Moving my sample rate around the 1MSps range
                        seems to work closer to what I expect, but of
                        course I can't write files that fast without
                        getting 'O' on the screen.  Ultimately I need to
                        use two receivers, so I don't believe that I can
                        push the clock rate above 30.72MHz.  </div>
                      <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                        <br>
                      </div>
                      <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                        I am running UHD-3_14 with RFNoC enabled (though
                        I am not using RFNoC in this particular
                        flowgraph).  What am I missing here?</div>
                      <br>
                    </blockquote>
                    Have it write to /dev/null, and time how long it
                    takes to gather some large number of samples, and go
                    from there.<br>
                       If your delivered sample rate is 500ksps, I don't
                    see why you need a master clock rate as high as
                    30Msps, but perhaps you have<br>
                       your reasons.  <br>
                    <br>
                  </div>
                </div>
              </div>
            </blockquote>
            <br>
          </div>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a moz-do-not-send="true"
            href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
          <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------030506090307040009020409--


--===============6956992327592919215==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6956992327592919215==--

