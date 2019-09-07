Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A2262AC8D6
	for <lists+usrp-users@lfdr.de>; Sat,  7 Sep 2019 20:47:09 +0200 (CEST)
Received: from [::1] (port=60578 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6fjn-0002ek-ED; Sat, 07 Sep 2019 14:47:07 -0400
Received: from mail-ot1-f49.google.com ([209.85.210.49]:40102)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1i6fjj-0002Wx-On
 for usrp-users@lists.ettus.com; Sat, 07 Sep 2019 14:47:03 -0400
Received: by mail-ot1-f49.google.com with SMTP id y39so8838859ota.7
 for <usrp-users@lists.ettus.com>; Sat, 07 Sep 2019 11:46:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cMLYu94Tz7M1B/3q5OyIY8C/2G0PNa+/8WND0JOupvo=;
 b=i08+BsPsl8oGKnGco/VFJpKKBruOuHRhBlNkD4YAAeI9S6srf5nnTjR19E+6oCusGH
 i19dd3Tsq+Hen6Kk9DoYPxgjUKvcGFBJyQUsavFevWf3Gh0LG/gU1OrF89unuBiunu+l
 B+lzGfT8S11vytafGAXLbqYp50NFk28hCjeTctJOp9xYxAs4d0AqOZXcMvM4pGcqGp3r
 ZP6tlQqMuVZaFid7B7PTy0jK1Vj68LSgZN2/RGsiEGC/w8hr/5f11ag0LhUdPMjHzDCK
 HZg7iAhP6qjQ3XlQXDNWJViZKA9Hf/KNlQyxMg+M0nXclbGK2i9tAPKF+4pp0SAU4Y2L
 Qjqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cMLYu94Tz7M1B/3q5OyIY8C/2G0PNa+/8WND0JOupvo=;
 b=B36hC4DvK8PQMDP67SmcJB77n6i1rvuD0YSTm7z4ZBe9IqI2VEOv3sEmq7EQ5am+JO
 YRxRODOVYHhHznFikSHTiuwtOb5UIfwkajl7nvDnk8GVatnUN+LHpWvd/4YtC2K3RAq1
 RF2nkuOueWeLnksGmjCei77dU/J7jhfeNxC7X7MuRp5t2EE0aGGmarxZrcXFiXIfg3UB
 BKtfgisAqF6v9bFPyCdUynb3+QYSRkjxu/x9ajcWa9BHXtrQNb+esEGhKHwuu4Eui2Df
 IaqhLbcPtV5XzhKYk3djPYBzNe7PvlMdtGdMTiwDak21k0gXC4XI8uI4xt9JREuI5On9
 m0EQ==
X-Gm-Message-State: APjAAAVbrHFrPRENZBz/R7qGE8rBEUB+5HLWksyLzZKqMl31s0dXwVGC
 GVcSGqR/htTqJlGq6ZvRVqtTfaMEXg3cfMwZy3Cl9do6
X-Google-Smtp-Source: APXvYqwn2stLUM0ZX3hpK8+8h6HPojhpcTuD2hpEWYFE1TTXHRtqbYrRnmgBAz0qb30XXmE05hv7P2Q7XVhK6/ukgVw=
X-Received: by 2002:a9d:3288:: with SMTP id u8mr5837568otb.120.1567881982909; 
 Sat, 07 Sep 2019 11:46:22 -0700 (PDT)
MIME-Version: 1.0
References: <CADk-HHD5kXWYz6fHhkxSM3Qu4ZbsTUPJ7pmVzud_wX2A7G=ffQ@mail.gmail.com>
 <CAGNhwTOx998ykxC8r6xT4w+c2wTXwf2Fsyt6mf+dXKGDf89BVQ@mail.gmail.com>
 <CADk-HHAmxv0hYPFA99PAALNW1WGz-MBWXYeEJo3fEB5_W5Oe9Q@mail.gmail.com>
 <62ebd388-90b1-e46d-57e8-38d48fcab44d@comcast.net>
 <cd4d078a-43f5-8a82-3456-5fc4c86f030f@comcast.net>
 <CADk-HHCJbxV3Px=eu5tZrEC3zVh81QXys46NegQ3V809D+2O3Q@mail.gmail.com>
 <202c637b-1565-5a21-9f76-91a648e211c6@comcast.net>
 <CADk-HHBWC_tzgWBphGjhzmEekSQbo+=WDY+HJ5HumoQHEaQ+Tw@mail.gmail.com>
In-Reply-To: <CADk-HHBWC_tzgWBphGjhzmEekSQbo+=WDY+HJ5HumoQHEaQ+Tw@mail.gmail.com>
Date: Sat, 7 Sep 2019 14:46:11 -0400
Message-ID: <CAGNhwTP4UsJWSOBH3TpRRZpx9pgpLgZ_WCq+4uTsG5QxFm9wHQ@mail.gmail.com>
To: "Dr. Rajesh Tiwari" <rajeshgps@gmail.com>
Subject: Re: [USRP-users] (no subject)
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: USRP list <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7548742259739188040=="
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

--===============7548742259739188040==
Content-Type: multipart/alternative; boundary="000000000000a436150591faf8b3"

--000000000000a436150591faf8b3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rajesh - CMake found your GR38 install, not your GR37 install. You
should pick GR37 or GR38 and go with just it, and remove the one you're not
going with. Then, pick the same branch of gr-ieee802-11. Hope this is
useful! - MLD

On Sat, Sep 7, 2019 at 9:47 AM Dr. Rajesh Tiwari via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Ron,
>
> Sounds good, seems a bit progress.
> I think other than Cmake policy, attached in screenshot I am almost there=
.
> Do you think I would need any other requirements?
>
> Regards
> Rajesh
>
>
> On Sat, Sep 7, 2019 at 2:06 PM Ron Economos via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Okay, here's the complete set of instructions.
>>
>> git clone https://github.com/bastibl/gr-ieee802-11.git
>>
>> cd gr-ieee802-11/
>>
>> git checkout maint-3.7
>>
>> mkdir build
>>
>> cd build
>>
>> cmake ../
>>
>> make
>>
>> sudo make install
>>
>> sudo ldconfig
>>
>> Make sure you use the correct install prefix in the cmake step. You can
>> determine the install prefix with:
>>
>> gnuradio-config-info --prefix
>>
>> cmake ../ will install into the default prefix, which is usr/local. If
>> you have any other prefix, you need to specify that with the cmake comma=
nd.
>> For example:
>>
>> cmake -DCMAKE_INSTALL_PREFIX=3D/usr ../
>>
>> Ron
>> On 9/7/19 05:36, Dr. Rajesh Tiwari wrote:
>>
>> Hi Ron,
>>
>> Thanks for response. I think I am bit confused here..., I am trying to
>> install from https://github.com/bastibl/gr-ieee802-11 and I am getting
>> error.
>>
>> Regards
>> Rajesh
>>
>> On Sat, Sep 7, 2019 at 12:07 PM Ron Economos via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Opps, should be:
>>>
>>> git checkout maint-3.7
>>>
>>> Ron
>>> On 9/7/19 04:05, Ron Economos via USRP-users wrote:
>>>
>>> There's a 3.7 version of gr-ieee802-11. In the gr-ieee802-11 directory,
>>> type:
>>>
>>> git checkout maint3.7
>>>
>>> Ron
>>> On 9/7/19 03:52, Dr. Rajesh Tiwari via USRP-users wrote:
>>>
>>> HI Michael,
>>>
>>> Many thanks for prompt response. I encountered problem in installing
>>> module "gr-ieee802-11" as it seems requiring gnuradio-companion, versio=
n
>>> 3.8. I am not able to update my GRC version 3.7 to 3.8. Any suggestion,
>>> please let me know.
>>>
>>> Regards
>>> Rajesh
>>>
>>> On Fri, Sep 6, 2019 at 5:14 PM Michael Dickens <
>>> michael.dickens@ettus.com> wrote:
>>>
>>>> Hi Rajesh - The block "OFDM Sync Short" is part of the GR out-of-tree
>>>> (OOT) module "gr-ieee802-11" ... as are many of the other blocks in th=
e
>>>> image you provided. If that OOT is not installed already, it shouldn't=
 be
>>>> difficult to do so. Hope this is useful! - MLD
>>>>
>>>> On Fri, Sep 6, 2019 at 5:10 AM Dr. Rajesh Tiwari via USRP-users <
>>>> usrp-users@lists.ettus.com> wrote:
>>>>
>>>>> Dear All,
>>>>>
>>>>> I am trying to decode IEEE 802.11a OFDM receiver as per GRC block
>>>>> diagram used in Paper "Bloessl et al(2013), An IEEE 802.11a/g/p OFDM
>>>>> Receiver for GNU Radio, SRIF=E2=80=9913, August 12, 2013, Hong Kong, =
China.". The
>>>>> screenshot of block diagram given below, In GRC, I didn't find "OFDM =
Sync
>>>>> Short" block, any help would be appreciated.
>>>>>
>>>>> "GRC block diagram from Bloessl et al(2013), An IEEE 802.11a/g/p OFDM
>>>>> Receiver for GNU Radio, SRIF=E2=80=9913, August 12, 2013, Hong Kong, =
China"
>>>>>
>>>>> Regards
>>>>> Rajesh
>>>>>
>>>>> _______________________________________________
>>>>> USRP-users mailing list
>>>>> USRP-users@lists.ettus.com
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>
>>>>
>>>> --
>>>> Michael Dickens, Mac OS X Programmer
>>>>
>>>> Ettus Research Technical Support
>>>>
>>>> Email: support@ettus.com
>>>>
>>>> Web: http://www.ettus.com
>>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com=
/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com=
/mailman/listinfo/usrp-users_lists.ettus.com
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
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--=20
Michael Dickens, Mac OS X Programmer

Ettus Research Technical Support

Email: support@ettus.com

Web: http://www.ettus.com

--000000000000a436150591faf8b3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0Rajesh - CMake found your GR38 install, not your G=
R37 install. You should pick GR37 or GR38 and go with just it, and remove t=
he one you&#39;re not going with. Then, pick the same branch of gr-ieee802-=
11. Hope this is useful! - MLD</div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Sat, Sep 7, 2019 at 9:47 AM Dr. Rajesh Tiw=
ari via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr"><div>Hi Ron,</div><div><br></div><div>=
Sounds good, seems a bit progress. <br></div><div>I think other than Cmake =
policy, attached in screenshot I am almost there. Do you think I would need=
 any other requirements?</div><div><br></div><div>Regards</div><div>Rajesh =
<br></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Sat, Sep 7, 2019 at 2:06 PM Ron Economos via US=
RP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p>Okay, here&#39;s the complete set of instructions.</p>
    <p>git clone <a class=3D"gmail-m_3548770407089070136gmail-m_62374272114=
46415851moz-txt-link-freetext" href=3D"https://github.com/bastibl/gr-ieee80=
2-11.git" target=3D"_blank">https://github.com/bastibl/gr-ieee802-11.git</a=
></p>
    <p>cd gr-ieee802-11/</p>
    <p>git checkout maint-3.7</p>
    <p>mkdir build</p>
    <p>cd build<br>
    </p>
    <p>cmake ../</p>
    <p>make</p>
    <p>sudo make install</p>
    <p>sudo ldconfig</p>
    <p>Make sure you use the correct install prefix in the cmake step.
      You can determine the install prefix with:</p>
    <p>gnuradio-config-info --prefix</p>
    <p>cmake ../ will install into the default prefix, which is
      usr/local. If you have any other prefix, you need to specify that
      with the cmake command. For example:</p>
    <p>cmake -DCMAKE_INSTALL_PREFIX=3D/usr ../<br>
    </p>
    <p>Ron<br>
    </p>
    <div class=3D"gmail-m_3548770407089070136gmail-m_6237427211446415851moz=
-cite-prefix">On 9/7/19 05:36, Dr. Rajesh Tiwari
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Hi Ron,
        <div><br>
        </div>
        <div>Thanks for response. I think I am bit confused here..., I
          am trying to install from=C2=A0<a href=3D"https://github.com/bast=
ibl/gr-ieee802-11" target=3D"_blank">https://github.com/bastibl/gr-ieee802-=
11</a>=C2=A0and
          I am getting error.=C2=A0</div>
        <div><br>
        </div>
        <div>Regards</div>
        <div>Rajesh</div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Sat, Sep 7, 2019 at 12:07
          PM Ron Economos via USRP-users &lt;<a href=3D"mailto:usrp-users@l=
ists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF">
            <p>Opps, should be:</p>
            <p>git checkout maint-3.7</p>
            <p>Ron<br>
            </p>
            <div class=3D"gmail-m_3548770407089070136gmail-m_62374272114464=
15851gmail-m_-2959264146492741720moz-cite-prefix">On
              9/7/19 04:05, Ron Economos via USRP-users wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <p>There&#39;s a 3.7 version of gr-ieee802-11. In the
                gr-ieee802-11 directory, type:<br>
              </p>
              <p>git checkout maint3.7</p>
              <p>Ron<br>
              </p>
              <div class=3D"gmail-m_3548770407089070136gmail-m_623742721144=
6415851gmail-m_-2959264146492741720moz-cite-prefix">On
                9/7/19 03:52, Dr. Rajesh Tiwari via USRP-users wrote:<br>
              </div>
              <blockquote type=3D"cite">
                <div dir=3D"ltr">HI=C2=A0Michael,
                  <div><br>
                  </div>
                  <div>Many thanks for prompt response. I encountered
                    problem in installing module &quot;gr-ieee802-11&quot; =
as it
                    seems requiring gnuradio-companion, version 3.8. I
                    am not able to update my GRC version 3.7 to 3.8. Any
                    suggestion, please let me know.</div>
                  <div><br>
                  </div>
                  <div>Regards</div>
                  <div>Rajesh</div>
                </div>
                <br>
                <div class=3D"gmail_quote">
                  <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep 6, 2019
                    at 5:14 PM Michael Dickens &lt;<a href=3D"mailto:michae=
l.dickens@ettus.com" target=3D"_blank">michael.dickens@ettus.com</a>&gt;
                    wrote:<br>
                  </div>
                  <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                    <div dir=3D"ltr">
                      <div dir=3D"ltr">Hi=C2=A0Rajesh - The block &quot;OFD=
M Sync
                        Short&quot; is part of the GR out-of-tree (OOT)
                        module &quot;gr-ieee802-11&quot; ... as are many of=
 the
                        other blocks in the image you provided. If that
                        OOT is not installed already, it shouldn&#39;t be
                        difficult to do so. Hope this is useful! - MLD</div=
>
                      <br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep 6=
,
                          2019 at 5:10 AM Dr. Rajesh Tiwari via
                          USRP-users &lt;<a href=3D"mailto:usrp-users@lists=
.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                          <div dir=3D"ltr">
                            <div>Dear All,</div>
                            <div><br>
                            </div>
                            <div>I am trying to decode IEEE 802.11a OFDM
                              receiver as per GRC block diagram used in
                              Paper &quot;Bloessl et al(2013), An IEEE
                              802.11a/g/p OFDM Receiver for GNU
                              Radio,=C2=A0SRIF=E2=80=9913, August 12, 2013,=
 Hong
                              Kong, China.&quot;. The screenshot of block
                              diagram given below, In GRC, I didn&#39;t fin=
d
                              &quot;OFDM Sync Short&quot; block, any help w=
ould=C2=A0be
                              appreciated.</div>
                            <div><br>
                            </div>
                            <div>&quot;GRC block diagram from Bloessl et
                              al(2013), An IEEE 802.11a/g/p OFDM
                              Receiver for GNU Radio,=C2=A0SRIF=E2=80=9913,=
 August
                              12, 2013, Hong Kong, China&quot;</div>
                            <div>
                              <div><br>
                              </div>
                            </div>
                            <div>Regards</div>
                            <div>Rajesh</div>
                            <div><br>
                            </div>
                          </div>
_______________________________________________<br>
                          USRP-users mailing list<br>
                          <a href=3D"mailto:USRP-users@lists.ettus.com" tar=
get=3D"_blank">USRP-users@lists.ettus.com</a><br>
                          <a href=3D"http://lists.ettus.com/mailman/listinf=
o/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://l=
ists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                        </blockquote>
                      </div>
                      <div><br>
                      </div>
                      -- <br>
                      <div dir=3D"ltr" class=3D"gmail-m_3548770407089070136=
gmail-m_6237427211446415851gmail-m_-2959264146492741720gmail-m_-19063659114=
73962634gmail_signature">
                        <div dir=3D"ltr">Michael Dickens, Mac OS X
                          Programmer<br>
                          <br>
                          Ettus Research Technical Support<br>
                          <br>
                          Email: <a href=3D"mailto:support@ettus.com" targe=
t=3D"_blank">support@ettus.com</a><br>
                          <br>
                          Web: <a href=3D"http://www.ettus.com" target=3D"_=
blank">http://www.ettus.com</a></div>
                      </div>
                    </div>
                  </blockquote>
                </div>
                <br>
                <fieldset class=3D"gmail-m_3548770407089070136gmail-m_62374=
27211446415851gmail-m_-2959264146492741720mimeAttachmentHeader"></fieldset>
                <pre class=3D"gmail-m_3548770407089070136gmail-m_6237427211=
446415851gmail-m_-2959264146492741720moz-quote-pre">_______________________=
________________________
USRP-users mailing list
<a class=3D"gmail-m_3548770407089070136gmail-m_6237427211446415851gmail-m_-=
2959264146492741720moz-txt-link-abbreviated" href=3D"mailto:USRP-users@list=
s.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>
<a class=3D"gmail-m_3548770407089070136gmail-m_6237427211446415851gmail-m_-=
2959264146492741720moz-txt-link-freetext" href=3D"http://lists.ettus.com/ma=
ilman/listinfo/usrp-users_lists.ettus.com" target=3D"_blank">http://lists.e=
ttus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
              </blockquote>
              <br>
              <fieldset class=3D"gmail-m_3548770407089070136gmail-m_6237427=
211446415851gmail-m_-2959264146492741720mimeAttachmentHeader"></fieldset>
              <pre class=3D"gmail-m_3548770407089070136gmail-m_623742721144=
6415851gmail-m_-2959264146492741720moz-quote-pre">_________________________=
______________________
USRP-users mailing list
<a class=3D"gmail-m_3548770407089070136gmail-m_6237427211446415851gmail-m_-=
2959264146492741720moz-txt-link-abbreviated" href=3D"mailto:USRP-users@list=
s.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>
<a class=3D"gmail-m_3548770407089070136gmail-m_6237427211446415851gmail-m_-=
2959264146492741720moz-txt-link-freetext" href=3D"http://lists.ettus.com/ma=
ilman/listinfo/usrp-users_lists.ettus.com" target=3D"_blank">http://lists.e=
ttus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
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
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Michael Dickens, Mac OS X Progr=
ammer<br><br>Ettus Research Technical Support<br><br>Email: <a href=3D"mail=
to:support@ettus.com" target=3D"_blank">support@ettus.com</a><br><br>Web: <=
a href=3D"http://www.ettus.com" target=3D"_blank">http://www.ettus.com</a><=
/div></div>

--000000000000a436150591faf8b3--


--===============7548742259739188040==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7548742259739188040==--

