Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BECB177E94
	for <lists+usrp-users@lfdr.de>; Tue,  3 Mar 2020 19:45:06 +0100 (CET)
Received: from [::1] (port=35456 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j9CXR-0006m5-F9; Tue, 03 Mar 2020 13:45:05 -0500
Received: from mail-oi1-f169.google.com ([209.85.167.169]:39362)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1j9CXN-0006eM-LP
 for usrp-users@lists.ettus.com; Tue, 03 Mar 2020 13:45:01 -0500
Received: by mail-oi1-f169.google.com with SMTP id r16so4097218oie.6
 for <usrp-users@lists.ettus.com>; Tue, 03 Mar 2020 10:44:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1HUtB0sehd/iG6iO6z/q+jdCCyVBiDOmHjVxRNAlIIo=;
 b=LlI/P/o9uo1ggPhcQ1ZfBEjR/348jdCHz4YfSlPlh43Lr1q4Sm+o9VzbSDG+CS07Yx
 wr2ZatyZbOPC1X2zs30HVPbV+Xuxl2qHmdpolMb3+mi1H9eXBJo7V9+lWyC6xcADf1df
 vVmQejOmlGYEeRnf1q2WEDM/9u5Wmrs3XcNiCP6Xui+b44DmEH2M3/IQeWvk5t9CdCVK
 zWkustkPuo50AYhCjA2QFBUVya+LA38tD+gFFljeGcEFbgOTx94G4lAYxf1KqdkiH+Sy
 DPTrQo4tC8uhJpOUhfklkBrIkxb1xC7jQYBYEAlOwpN6W/rCRgqD7BctrVLwnjpllOci
 AERw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1HUtB0sehd/iG6iO6z/q+jdCCyVBiDOmHjVxRNAlIIo=;
 b=saNwCJgPblezXKv07dVsg3V97oYoBL7oxrULKQuKwRM6JAzJY2b8yjo5LFbWT8N1Ze
 zmq7rMoK7+8Bfr//ZOaIEwFJUneYq8O9V2CV3OvlZ/frMqDObYEEURq59zMeNAK8tdNZ
 XLkujQHYljEWLhMi5BYehrSZc5Rc/Hzo/1Cp38im6mr9dX3LyqHpx8doyHFxmfLST6f7
 X6DVPN9T8FlGG9K5PrYImlYNEiDY+pYaZvjkBHra1xZo6t8zCdWQbXUCmINCjoR4x1x4
 wB4qNP6XDD5RTEzVRbJlwSTYmhIYJMuyxqlUaV+BsQGKjajLOhFo6lOpotwTlrKw0kpM
 YglQ==
X-Gm-Message-State: ANhLgQ138wTL+ZikjsgGOuwV4WSnwIhNoBSHUMfbPbAG5EmeLJvO3zRi
 IqfYVtgYmNoouAncWzJZMv2iECyk03tOErB5Wq2SwQ==
X-Google-Smtp-Source: ADFU+vv87zzcT8ev9C82uyVZA4V/TxrTXii1uX5yaNOCnYpjkrYkwJkhsbBw18GvPGaKS2VuJxgisQswjtrnHjroqI0=
X-Received: by 2002:aca:4587:: with SMTP id s129mr3331920oia.124.1583261060821; 
 Tue, 03 Mar 2020 10:44:20 -0800 (PST)
MIME-Version: 1.0
References: <1994044559.834986.1582780917804.ref@mail.yahoo.com>
 <1994044559.834986.1582780917804@mail.yahoo.com>
 <CAB__hTT=tXe=hpWaESU8YVrWpG8BjvZtQ5kTZY9YxJihGc+TBg@mail.gmail.com>
 <5E5E9753.9040502@gmail.com>
 <CANf970Z2rDB5Mz87xrTCpXdJHYz39A999zxNR39oqVZJrOremQ@mail.gmail.com>
In-Reply-To: <CANf970Z2rDB5Mz87xrTCpXdJHYz39A999zxNR39oqVZJrOremQ@mail.gmail.com>
Date: Tue, 3 Mar 2020 13:44:09 -0500
Message-ID: <CAB__hTRb5Og1qFj9PVk4q3LyKXboYc0EKVXMZKGDXXKPFJ5d_g@mail.gmail.com>
To: Sam Reiter <sam.reiter@ettus.com>
Subject: Re: [USRP-users] USRP N310
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
Content-Type: multipart/mixed; boundary="===============8570705051836096958=="
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

--===============8570705051836096958==
Content-Type: multipart/alternative; boundary="0000000000001e2b2b059ff7b1b7"

--0000000000001e2b2b059ff7b1b7
Content-Type: text/plain; charset="UTF-8"

Hi Sam,
Just tolerate it.  I don't have any compensation algorithm.
Rob

On Tue, Mar 3, 2020 at 1:41 PM Sam Reiter <sam.reiter@ettus.com> wrote:

> Rob,
>
> Question for you - is your usecase one where you can simply tolerate that
> 180 degree ambiguity? Or do you have a routine in your code to characterize
> and compensate for it on each run?
>
> Sam Reiter
>
> On Tue, Mar 3, 2020 at 11:44 AM Marcus D. Leech via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> On 03/03/2020 12:31 PM, Rob Kossler via USRP-users wrote:
>>
>> Hi Len,
>> I have run some testing of this capability.  A few remarks:
>>
>>    - In my test setup, I had a signal generator running into a 1:4
>>    splitter with outputs connected to the four N310 Rx2 inputs.  I used
>>    another signal generator as the LO source running into a 1:2 splitter with
>>    outputs connected to the N310 Rx LO inputs with amplitude near 3 dBm
>>    <https://kb.ettus.com/N300/N310#Front_Panel> at N310 LO inputs.
>>    - When using external LO, the RF range is limited to a max of 4 GHz
>>    (rather than 6 GHz which is the limit with internal LO)
>>    - I had problems with UHD 3.14 because there was some bug related to
>>    resetting the phase of the DDC.  I had success with 3.15. But even with
>>    success, there is still a 180 degree ambiguity between channels 1/2 and
>>    channels 3/4.  I am not certain regarding the circumstances that can cause
>>    the ambiguity to flip, but I think it only occurs at application startup
>>    such that once your application is running, you can expect consistent
>>    results with no ambiguity flips.
>>
>> This is probably due to the 2XLO phase-splitter inside the AD9371
>> chips--it's based on a flip-flop, whose initial state is unpredictable.  Any
>>   2XLO phase-splitter has this property--including on the WBX
>> daughtercard used on N210/X310 etc.  The mixer has a 2XLO phase-splitter,
>>   so also shows this 180deg phase ambiguity.
>>
>>
>>
>>    - When you launch your application and create a usrp device instance,
>>    the UHD software will automatically try to run some IQ calibrations
>>    (RX_QEC_INIT) expecting that the RF is at 2.5 GHz, which implies that your
>>    external LO must be at 5 GHz at startup.  After startup is complete (and
>>    this calibration is complete) you can change the freq of your LO and retune
>>    the RF of the various channels keeping in mind that the external LO must
>>    always be twice the desired RF.  If you want to avoid the startup
>>    calibration (with LO at 5 GHz), you can specify explicitly which
>>    calibrations
>>    <https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_mg_calibrations>
>>    you want using the device args and choose not to run RX_QEC_INIT. But, I'm
>>    not sure if skipping this calibration could have negative effects on signal
>>    quality.
>>
>> Let me know if you have questions.
>> Rob
>>
>>
>> On Thu, Feb 27, 2020 at 12:22 AM Len via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Folks,
>>> I'm looking for information from any subscriber(s) to this forum that
>>> have successfully used the USRP N310 to provide 4 Rx channels which are
>>> both coherent and synchronized.  I've heard this could be challenging and I
>>> know people have been able to do this successfully so I was wondering where
>>> I might find some detailed information/instructions on how best to
>>> accomplish this.  I was told this forum would be a good place to start.  So
>>> any block diagrams illustrating the Master LO and Master Clock hookups
>>> needed along with any available calibration procedure(s) describing how to
>>> actually check/verify coherence and synchronization between the 4 channels
>>> would be great.
>>>
>>>
>>> Thanks,
>>> Len
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>>
>> _______________________________________________
>> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--0000000000001e2b2b059ff7b1b7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Sam,<div>Just tolerate it.=C2=A0 I don&#39;t have any c=
ompensation algorithm.</div><div>Rob</div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 3, 2020 at 1:41 PM Sa=
m Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.com">sam.reiter@ettus.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr">Rob,<br><br>Question for you - is your usecase one where you=
 can simply tolerate that 180 degree ambiguity? Or do you have a routine in=
 your code to characterize and compensate for it on each run?<br><br>Sam Re=
iter</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Tue, Mar 3, 2020 at 11:44 AM Marcus D. Leech via USRP-users &lt;<a h=
ref=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@list=
s.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 03/03/2020 12:31 PM, Rob Kossler via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>Hi Len,</div>
        <div>I have run some testing of this capability.=C2=A0 A few remark=
s:</div>
        <div>
          <ul>
            <li>In my test setup, I had a signal generator running into
              a 1:4 splitter with outputs connected to the four N310 Rx2
              inputs.=C2=A0 I used another signal generator as the LO sourc=
e
              running into a 1:2 splitter with outputs connected to the
              N310 Rx LO inputs with amplitude <a href=3D"https://kb.ettus.=
com/N300/N310#Front_Panel" target=3D"_blank">near 3
                dBm</a> at N310 LO inputs.</li>
            <li>When using external LO, the RF range is limited to a max
              of 4 GHz (rather than 6 GHz which is the limit with
              internal LO)</li>
            <li>I had problems with UHD 3.14 because there was some bug
              related to resetting the phase of the DDC.=C2=A0 I had succes=
s
              with 3.15. But even with success, there is still a 180
              degree ambiguity between channels 1/2 and channels 3/4.=C2=A0=
 I
              am not certain regarding the circumstances that can cause
              the ambiguity to flip, but I think it only occurs at
              application startup such that once your application is
              running, you can expect consistent results with no
              ambiguity flips.</li>
          </ul>
        </div>
      </div>
    </blockquote>
    This is probably due to the 2XLO phase-splitter inside the AD9371
    chips--it&#39;s based on a flip-flop, whose initial state is
    unpredictable.=C2=A0 Any<br>
    =C2=A0 2XLO phase-splitter has this property--including on the WBX
    daughtercard used on N210/X310 etc.=C2=A0 The mixer has a 2XLO
    phase-splitter,<br>
    =C2=A0 so also shows this 180deg phase ambiguity.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>
          <ul>
            <li>When you launch your application and create a usrp
              device instance, the UHD software will automatically try
              to run some IQ calibrations (RX_QEC_INIT) expecting that
              the RF is at 2.5 GHz, which implies that your external LO
              must be at 5 GHz at startup.=C2=A0 After startup is complete
              (and this calibration is complete) you can change the freq
              of your LO and retune the RF of the various channels
              keeping in mind that the external=C2=A0LO must always be twic=
e
              the desired RF.=C2=A0 If you want to avoid the startup
              calibration (with LO at 5 GHz), you can specify explicitly
              which <a href=3D"https://files.ettus.com/manual/page_usrp_n3x=
x.html#n3xx_mg_calibrations" target=3D"_blank">calibrations</a>
              you want using the device args and choose not to run
              RX_QEC_INIT. But, I&#39;m not sure if skipping this
              calibration could have negative effects on signal quality.</l=
i>
          </ul>
          <div>Let me know if you have questions.</div>
          <div>Rob</div>
          <div><br>
          </div>
        </div>
        <br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 27, 2020 at
            12:22 AM Len via USRP-users &lt;<a href=3D"mailto:usrp-users@li=
sts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div style=3D"color:black;font:10pt arial">Folks,
              <div>I&#39;m looking for information from any subscriber(s) t=
o
                this forum that have successfully used the USRP N310 to
                provide 4 Rx channels which are both coherent and
                synchronized.=C2=A0 I&#39;ve heard this could be challengin=
g and
                I know people have been able to do this successfully so
                I was wondering where I might find some detailed
                information/instructions on how best to accomplish
                this.=C2=A0 I was told this forum would be a good place to
                start.=C2=A0 So any block diagrams illustrating the Master =
LO
                and Master Clock hookups needed along with any available
                calibration procedure(s) describing how to actually
                check/verify coherence and synchronization between the 4
                channels would be great.</div>
              <div><br>
              </div>
              <div><br>
              </div>
              <div>Thanks,</div>
              <div>Len=C2=A0 =C2=A0 =C2=A0</div>
            </div>
            _______________________________________________<br>
            USRP-users mailing list<br>
            <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank"=
>USRP-users@lists.ettus.com</a><br>
            <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_l=
ists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com=
/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          </blockquote>
        </div>
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
</blockquote></div>
</blockquote></div>

--0000000000001e2b2b059ff7b1b7--


--===============8570705051836096958==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8570705051836096958==--

