Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E71541A49D
	for <lists+usrp-users@lfdr.de>; Tue, 28 Sep 2021 03:32:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A164038458B
	for <lists+usrp-users@lfdr.de>; Mon, 27 Sep 2021 21:32:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OGvhE5TA";
	dkim-atps=neutral
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 78DB7384122
	for <usrp-users@lists.ettus.com>; Mon, 27 Sep 2021 21:31:43 -0400 (EDT)
Received: by mail-qt1-f176.google.com with SMTP id f15so5643621qtv.9
        for <usrp-users@lists.ettus.com>; Mon, 27 Sep 2021 18:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=HPK+7b6YbB29YgLiWNEEkcM5IcN2oq4On+uR8TcPeVM=;
        b=OGvhE5TAuR+JP46j88GySqVNSqvpP9BehvGJBK1y0kLcc7vfb3yV23OWN5qlmymR7F
         9UIMs6UnRfDYKMCjJR8fv6M4GVJzOqZE7bSA4gnv4TA8GnS8vNLZA82kTAi1aZpWOycd
         nZHbXFPr2/GMFeIWL7zgw5Nt1XNDrX0r860j9JcZTmcOHLiIC+43fbjHePmH6Q3ZZG8+
         KiIEzotOobDLqDQ66uN9/cuGNDrSm1ViD/6Q+63Srf9m74LtVvLTnmCUxjE8hkzMXw8D
         F73i2Jbsxm3EtT92DDLpKuSfzJTmdAk5fHEqdHI6KSRqIRyZVR7O7Icwmrmd3tZ52hhF
         qFSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=HPK+7b6YbB29YgLiWNEEkcM5IcN2oq4On+uR8TcPeVM=;
        b=ib04yJjTXcN7TvFwtHqanf1Sc4oQYmKQB/Xb+fyswDRRDCFW8BRjY6h95fJTNxk9dF
         tfIh85XqD8dnqqyANqgpRZbeiOp3iPzPJyXvCVUcBPSaIQUQrwCVcPnTDddGM0coYOTS
         NlwHfWoT+O57xfzhStZ7X2Lu1Ugzc+FrhlXtsHjxsP45kFnhXa7YOpwq/H8b51FOAWwz
         F3OqCJDmxHGYxo7MV9H4sWoz7NQKnHywHT/MqRptzlQHJYTPNaT8/g7DrBnI+cz7e87f
         CcNls0L7C8JLyAsdCOr0lNHxA5lNoBdFrts6SfCHeZgfx48kEN0Dsc+OrWasbdS0bNhd
         Sq1A==
X-Gm-Message-State: AOAM530g9fhbtHW7fQw7r1u//eB8IgSN87Rj5k18dJF8ZnzTXhpyoZhK
	ffPIMVjtEA6RavIwDoZ3PlQT8dTn933skQ==
X-Google-Smtp-Source: ABdhPJxHp0Q4h2i+IjN4f2bqfcVrQFaYV58BDybBVi/y10BhBgvvnvTMm4qS3bVDoPelSNowYE34lg==
X-Received: by 2002:ac8:13c5:: with SMTP id i5mr3029060qtj.68.1632792702504;
        Mon, 27 Sep 2021 18:31:42 -0700 (PDT)
Received: from [192.168.2.246] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id f10sm13984536qkp.50.2021.09.27.18.31.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Sep 2021 18:31:42 -0700 (PDT)
To: Tellrell White <t_whit_87@yahoo.com>
References: <599675072.1235424.1632788672233@mail.yahoo.com>
 <AF84E197-4329-4C6B-A48D-2DDBAE9AE5C9@gmail.com>
 <351392126.1248499.1632790971208@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <65d92acd-309a-0f71-f91e-36d495fb9f9f@gmail.com>
Date: Mon, 27 Sep 2021 21:31:40 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <351392126.1248499.1632790971208@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: KC46YNHFOMUWSAEEQA4LGQ3GDDMOKLDY
X-Message-ID-Hash: KC46YNHFOMUWSAEEQA4LGQ3GDDMOKLDY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problems cross compiling for N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KC46YNHFOMUWSAEEQA4LGQ3GDDMOKLDY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6776258553933612014=="

This is a multi-part message in MIME format.
--===============6776258553933612014==
Content-Type: multipart/alternative;
 boundary="------------B7BF48F0E26F5F64638E9940"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------B7BF48F0E26F5F64638E9940
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-27 9:02 p.m., Tellrell White wrote:
> Marcus
>
> From looking under sysroot, it appears that there is stuff under it as=20
> shown here
>
>
> apg@apg-virtual-machine:/usr/local/oecore-x86_64/sysroots/cortexa9t2hf-=
neon-oe-linux-gnueabi$=20
> ls
> bin=C2=A0=C2=A0 data=C2=A0 etc=C2=A0=C2=A0 lib=C2=A0=C2=A0=C2=A0 mnt=C2=
=A0=C2=A0 run=C2=A0=C2=A0 sys=C2=A0 usr
> boot=C2=A0 dev=C2=A0=C2=A0 home=C2=A0 media=C2=A0 proc=C2=A0 sbin=C2=A0=
 tmp=C2=A0 var
>
>
> I looked into some of the directores like /bin, /lib, and /boot and=20
> there are things within the directories so there is stuff there. Do I=20
> need to list sysroot under PATH so that it can be seen? Also, am I=20
> using/calling the cross-compiler correctly from the command line as=20
> indicated above?
>
>
Use $CC as if it were your compiler command.

$CC -o hello hello.c

What happens then?


>
>
> On Monday, September 27, 2021, 8:53:49 PM EDT, Marcus D Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>
> Have you confirmed that there=E2=80=99s =E2=80=9Cstuff=E2=80=9D under t=
he sysyroot that is=20
> being pointed to in that $CC variable?
>
> Sent from my iPhone
>
>> On Sep 27, 2021, at 8:26 PM, Tellrell White via USRP-users=20
>> <usrp-users@lists.ettus.com> wrote:
>>
>> =EF=BB=BF
>> I'm trying to cross-compile a simple "hello world" c file on a host=20
>> system running ubuntu 18.04. I installed version=20
>> UHD_4.0.0.HEAD-0-g90ce6062 and I have the same version of UHD running=20
>> on the N310 I'm using. As instructed, I followed the steps under=20
>> "Obtaining an SDK" and "SDK Usage" at the following link
>>
>> https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_software_dev_s=
dk=20
>> <https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_software_dev_=
sdk>=20
>> and the command $CC -dumpmachine shows the correct result as shown.
>>
>>
>> apg@apg-virtual-machine:~$ $CC -dumpmachine
>> arm-oe-linux-gnueabi
>>
>> My issue is when i try to compile a simple hello world.c file I get=20
>> the following
>>
>> apg@apg-virtual-machine:~$ arm-oe-linux-gnueabi-gcc hello_world.c
>> hello_world.c:1:10: fatal error: stdio.h: No such file or directory
>> =C2=A0=C2=A0=C2=A0 1 | #include <stdio.h>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 ^~~~~~~~~
>> compilation terminated.
>>
>>
>> Not sure why i'm getting this simple error at the moment but the=20
>> proper env=C2=A0 variables have been set as shown
>>
>> apg@apg-virtual-machine:~$ echo $CC
>> arm-oe-linux-gnueabi-gcc -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard=20
>> -mcpu=3Dcortex-a9=20
>> --sysroot=3D/usr/local/oecore-x86_64/sysroots/cortexa9t2hf-neon-oe-lin=
ux-gnueabi
>>
>> Perhaps there are some add'l paths that I need to be set ??
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com


--------------B7BF48F0E26F5F64638E9940
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-27 9:02 p.m., Tellrell Whit=
e
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:351392126.1248499.1632790971208@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydp2496375yahoo-style-wrap" style=3D"font-family:
        Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Marcus <br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">From looking under sysroot=
,
          it appears that there is stuff under it as shown here<br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">
          <div>apg@apg-virtual-machine:/usr/local/oecore-x86_64/sysroots/=
cortexa9t2hf-neon-oe-linux-gnueabi$
            ls<br>
            bin=C2=A0=C2=A0 data=C2=A0 etc=C2=A0=C2=A0 lib=C2=A0=C2=A0=C2=
=A0 mnt=C2=A0=C2=A0 run=C2=A0=C2=A0 sys=C2=A0 usr<br>
            boot=C2=A0 dev=C2=A0=C2=A0 home=C2=A0 media=C2=A0 proc=C2=A0 =
sbin=C2=A0 tmp=C2=A0 var<br>
            <div><br>
            </div>
            <div><br>
            </div>
            <div dir=3D"ltr" data-setdir=3D"false">I looked into some of =
the
              directores like /bin, /lib, and /boot and there are things
              within the directories so there is stuff there. Do I need
              to list sysroot under PATH so that it can be seen? Also,
              am I using/calling the cross-compiler correctly from the
              command line as indicated above?<br>
            </div>
          </div>
          <div><br>
          </div>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
      </div>
    </blockquote>
    Use $CC as if it were your compiler command.<br>
    <br>
    $CC -o hello hello.c<br>
    <br>
    What happens then?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:351392126.1248499.1632790971208@mail.yahoo.com">
      <div class=3D"ydp2496375yahoo-style-wrap" style=3D"font-family:
        Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 13px;">
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div><br>
        </div>
      </div>
      <div id=3D"yahoo_quoted_3316240964" class=3D"yahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;">
          <div> On Monday, September 27, 2021, 8:53:49 PM EDT, Marcus D
            Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patch=
vonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div id=3D"yiv7417892434">
              <div>Have you confirmed that there=E2=80=99s =E2=80=9Cstuff=
=E2=80=9D under the
                sysyroot that is being pointed to in that $CC variable?<b=
r
                  clear=3D"none">
                <br clear=3D"none">
                <div dir=3D"ltr">Sent from my iPhone</div>
                <div dir=3D"ltr"><br clear=3D"none">
                  <blockquote type=3D"cite">On Sep 27, 2021, at 8:26 PM,
                    Tellrell White via USRP-users
                    <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usr=
p-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a> wrote:<br
                      clear=3D"none">
                    <br clear=3D"none">
                  </blockquote>
                </div>
                <blockquote type=3D"cite">
                  <div dir=3D"ltr">=EF=BB=BF
                    <div class=3D"yiv7417892434yahoo-style-wrap"
                      style=3D"font-family:Helvetica Neue, Helvetica,
                      Arial, sans-serif;font-size:13px;">
                      <div class=3D"yiv7417892434yqt7797519226"
                        id=3D"yiv7417892434yqt04076">
                        <div dir=3D"ltr">
                          <div dir=3D"ltr">I'm trying to cross-compile a
                            simple "hello world" c file on a host system
                            running ubuntu 18.04. I installed version <sp=
an>UHD_4.0.0.HEAD-0-g90ce6062
                              and I have the same version of UHD running
                              on the N310 I'm using. As instructed, I
                              followed the steps under "Obtaining an
                              SDK" and "SDK Usage" at the following link
                              <br clear=3D"none">
                            </span></div>
                          <div dir=3D"ltr"><span><br clear=3D"none">
                            </span></div>
                          <div dir=3D"ltr"><a rel=3D"nofollow noopener
                              noreferrer" shape=3D"rect" target=3D"_blank=
"
href=3D"https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_software_=
dev_sdk"
                              moz-do-not-send=3D"true">https://files.ettu=
s.com/manual/page_usrp_n3xx.html#n3xx_software_dev_sdk</a>
                            and the command $CC -dumpmachine shows the
                            correct result as shown. <br clear=3D"none">
                          </div>
                          <div dir=3D"ltr"><br clear=3D"none">
                          </div>
                          <div dir=3D"ltr"><br clear=3D"none">
                          </div>
                          <div dir=3D"ltr">
                            <div>apg@apg-virtual-machine:~$ $CC
                              -dumpmachine<br clear=3D"none">
                              <div>arm-oe-linux-gnueabi</div>
                              <div><br clear=3D"none">
                              </div>
                              <div dir=3D"ltr">
                                <div>My issue is when i try to compile a
                                  simple hello world.c file I get the
                                  following <br clear=3D"none">
                                </div>
                                <div><br clear=3D"none">
                                </div>
                                <div>apg@apg-virtual-machine:~$
                                  arm-oe-linux-gnueabi-gcc hello_world.c
                                  <br clear=3D"none">
                                  hello_world.c:1:10: fatal error:
                                  stdio.h: No such file or directory<br
                                    clear=3D"none">
                                  =C2=A0=C2=A0=C2=A0 1 | #include &lt;std=
io.h&gt;<br
                                    clear=3D"none">
                                  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~<br
                                    clear=3D"none">
                                  <div>compilation terminated.</div>
                                  <div><br clear=3D"none">
                                  </div>
                                  <div><br clear=3D"none">
                                  </div>
                                  <div dir=3D"ltr">
                                    <div>Not sure why i'm getting this
                                      simple error at the moment but the
                                      proper env=C2=A0 variables have bee=
n
                                      set as shown</div>
                                    <div><br clear=3D"none">
                                    </div>
                                    <div>apg@apg-virtual-machine:~$ echo
                                      $CC<br clear=3D"none">
                                      <div>arm-oe-linux-gnueabi-gcc
                                        -mthumb -mfpu=3Dneon
                                        -mfloat-abi=3Dhard -mcpu=3Dcortex=
-a9
--sysroot=3D/usr/local/oecore-x86_64/sysroots/cortexa9t2hf-neon-oe-linux-=
gnueabi</div>
                                      <div><br clear=3D"none">
                                      </div>
                                      <div dir=3D"ltr">Perhaps there are
                                        some add'l paths that I need to
                                        be set ??<br clear=3D"none">
                                      </div>
                                      <br clear=3D"none">
                                    </div>
                                  </div>
                                  <div dir=3D"ltr"><br clear=3D"none">
                                  </div>
                                  <div dir=3D"ltr"><br clear=3D"none">
                                  </div>
                                  <div dir=3D"ltr"><br clear=3D"none">
                                  </div>
                                  <div dir=3D"ltr"><br clear=3D"none">
                                  </div>
                                  <br clear=3D"none">
                                </div>
                                <div><br clear=3D"none">
                                </div>
                              </div>
                              <div dir=3D"ltr"><br clear=3D"none">
                              </div>
                              <div dir=3D"ltr"><br clear=3D"none">
                              </div>
                              <br clear=3D"none">
                            </div>
                            <div><br clear=3D"none">
                            </div>
                          </div>
                          <div dir=3D"ltr"><br clear=3D"none">
                          </div>
                          <div dir=3D"ltr"><br clear=3D"none">
                          </div>
                          <div><br clear=3D"none">
                          </div>
                          <div><br clear=3D"none">
                          </div>
                          <div><br clear=3D"none">
                          </div>
                          <div dir=3D"ltr"><br clear=3D"none">
                            <span></span><span></span><span></span></div>
                        </div>
                      </div>
                    </div>
                    <span>_______________________________________________=
</span><br
                      clear=3D"none">
                    <span>USRP-users mailing list --
                      <a class=3D"moz-txt-link-abbreviated" href=3D"mailt=
o:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a></span><br cl=
ear=3D"none">
                    <span>To unsubscribe send an email to
                      <a class=3D"moz-txt-link-abbreviated" href=3D"mailt=
o:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a><=
/span><br
                      clear=3D"none">
                  </div>
                </blockquote>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------B7BF48F0E26F5F64638E9940--

--===============6776258553933612014==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6776258553933612014==--
