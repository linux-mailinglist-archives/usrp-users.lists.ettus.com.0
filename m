Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC8431F489
	for <lists+usrp-users@lfdr.de>; Fri, 19 Feb 2021 05:48:20 +0100 (CET)
Received: from [::1] (port=50090 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lCxiE-0007sa-Py; Thu, 18 Feb 2021 23:48:18 -0500
Received: from mail-lj1-f170.google.com ([209.85.208.170]:38466)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marxwolfs@gmail.com>) id 1lCxiB-0007jW-0o
 for usrp-users@lists.ettus.com; Thu, 18 Feb 2021 23:48:15 -0500
Received: by mail-lj1-f170.google.com with SMTP id j6so12714048ljo.5
 for <usrp-users@lists.ettus.com>; Thu, 18 Feb 2021 20:47:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Cqocz6D0iHdaaG1qkGKMzOYWLzzk2+paGHR+qwySBFs=;
 b=kGQUYNOdRKp2yhEh3Cg1EIDe0cQLyAtWHLlQMFngCYOyp4oYB6/Ot2+X5/3VOgya4b
 e8OnY6NlB2IFjjjBwwIm1I7iHZrylNPcMqRAvS0jlko6bD9TXUTzKB8viot9FfU3WK4u
 pQK/IY/HcjOlYEIa0QqCIPm4cKrRVDD4NW6s8/v5WuxYRIVpgBttN/Ik626EAd6XhIaJ
 VdfmK9mx/zIg6RsePmcOdJKsJxLX7+rYQ66z+I2u25sbFaXad/13jA1YiOnZNwKjnVPC
 lz6Ci2lYPs6ckGSxWCR+XCfK3HrRE6ZbH2F83gcPMZeFem7Rkm+NEyiPotTotI47G62N
 qHNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Cqocz6D0iHdaaG1qkGKMzOYWLzzk2+paGHR+qwySBFs=;
 b=Fw6FN/nnSq8YvWD+bKa9B19N+EA5QQK3GHb1s/Zo4LPH3rNbBGx7QJIysP03w9BGtL
 BmWZSXCt1M+k0Q+oK1Xx9AH2/vO6sDYPGGnf9ExZGuiai3rPXzrUpVGVBuDxUhf/i2xB
 6rLxlvMP1ALB8cs11WfrwAhVn8Fb9HTIbbKMrlCjLFkHfBUg+MMOcD4xXkYq6O4FMaps
 88GsH5b6CBFoqa7aPV55QDDmmsTkyzT3pOltq5ke6hnP4Ivl5Ogyjxtr1ZJz2JOpzJ9a
 D6G+tnchb2OppzifmAXtgmpSCujRmstqJsxv3eHHoagYrJxUq34ANNVredGfkFNcZYv+
 kUfA==
X-Gm-Message-State: AOAM5334LohoS4ffc1O948kjyqs2cAb6HPEEH3ndqTjSH4Exop3gmxBN
 3jDsCJ7pag4J/vo/sx6KA87we+ojSm2d7dnGPAQ=
X-Google-Smtp-Source: ABdhPJz2YwK+004CpH0Kd6o1nbIsmeuazCibyvqlrxxBFpvabVjTPavf0MTRNxDPOGjQs6x9PGV7s1kmQFyr/TI2RUg=
X-Received: by 2002:a2e:8e2a:: with SMTP id r10mr4617596ljk.186.1613710053620; 
 Thu, 18 Feb 2021 20:47:33 -0800 (PST)
MIME-Version: 1.0
References: <CACryqrEA9jJWATSCon3Drp-ngO0QraK7goABm0U0gTFqR_hCdg@mail.gmail.com>
 <023DC74F-683D-4FEF-AAF3-D39619E4791F@gmail.com>
 <CACryqrHMw6jKS4dAF25mhAbbdWH-tLiQ5EBJ1vjc72ac96X_7g@mail.gmail.com>
 <602F3C2B.3040405@gmail.com>
In-Reply-To: <602F3C2B.3040405@gmail.com>
Date: Thu, 18 Feb 2021 21:47:22 -0700
Message-ID: <CACryqrHPxsMSiXmM3Er-WTJ+vxgroAdRY0A0btfpiBvr0F-JRg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] x310 two UBX daughterboard receiver
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
From: Xiang Ma via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Xiang Ma <marxwolfs@gmail.com>
Content-Type: multipart/mixed; boundary="===============2392817280145708671=="
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

--===============2392817280145708671==
Content-Type: multipart/alternative; boundary="000000000000843f5005bba9269d"

--000000000000843f5005bba9269d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If I want to use slot A as transmitter, slot B as receiver, can I do like
this:
self.source.set_antenna("RX2", 1)
self.sink.set_antenna("TX/RX", 0)

In this page, it said *The default subdev spec is "A:0 B:0", which means
slot A is mapped to channel 0, and slot B is mapped to channel 1.*
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-June/05696=
5.html

On Thu, Feb 18, 2021 at 9:18 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 02/18/2021 10:16 PM, Xiang Ma wrote:
>
> Are there any python code for this? I am using the python interface.
>
> You'll have to kind of infer what to do from the C++ example--there is no
> Python version of that example.
>
>
>
> On Thu, Feb 18, 2021 at 7:44 PM Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
>
>> Well there=E2=80=99s the rx_multi_samples example that is part of the UH=
D source
>> tree.
>>
>> Sent from my iPhone
>>
>> On Feb 18, 2021, at 9:32 PM, Xiang Ma <marxwolfs@gmail.com> wrote:
>>
>> =EF=BB=BF
>>   Do you have any example code? I am still confused.
>>
>> Thank you.
>>
>> On Thu, Feb 18, 2021 at 5:50 PM Marcus D Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> Just create a 2-channel USRP source and specify a subdev of =E2=80=9CA:=
0 B:0=E2=80=9D.
>>>
>>>
>>>
>>> Sent from my iPhone
>>>
>>> On Feb 18, 2021, at 7:38 PM, Xiang Ma via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>> =EF=BB=BF
>>> Hi,
>>>
>>>     I am using a x310 USRP with two UBX daughterboards. Now I can
>>> transmit and receive the signal in RF A daughterboard with command
>>>     self.source.set_antenna("RX2", 0)
>>>     self.sink.set_antenna("TX/RX", 0).
>>>
>>>     Now, I want to transmit the signal in RF A, and receive the signal
>>> in both RF A and RF B. It is actually 1 transmitter and 2 receivers. Ho=
w
>>> can I implement this? I checked the set_subdev_subdev("B", 1), but it
>>> doesn't work.
>>>
>>> Thank you,
>>>
>>>
>>>
>>>
>>> --
>>> *Xiang Ma, *Ph.D. Student
>>> College of Engineering
>>> Utah State University
>>> E-mail:marxwolfs@gmail.com
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>>
>>
>> --
>> *Xiang Ma, *Ph.D. Student
>> College of Engineering
>> Utah State University
>> E-mail:marxwolfs@gmail.com
>>
>>
>
> --
> *Xiang Ma, *Ph.D. Student
> College of Engineering
> Utah State University
> E-mail:marxwolfs@gmail.com
>
>
>

--=20
*Xiang Ma, *Ph.D. Student
College of Engineering
Utah State University
E-mail:marxwolfs@gmail.com

--000000000000843f5005bba9269d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">If I want to use slot A as transmitter, slot B as receiver=
, can I do like this:<div><div>self.source.set_antenna(&quot;RX2&quot;, 1)<=
/div><div>self.sink.set_antenna(&quot;TX/RX&quot;, 0)</div></div><div><br><=
/div><div>In this page, it said <i>The default subdev spec is &quot;A:0 B:0=
&quot;, which means slot A is mapped to channel 0, and slot B is mapped to =
channel 1.</i></div><div><a href=3D"http://lists.ettus.com/pipermail/usrp-u=
sers_lists.ettus.com/2018-June/056965.html">http://lists.ettus.com/pipermai=
l/usrp-users_lists.ettus.com/2018-June/056965.html</a><br></div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb=
 18, 2021 at 9:18 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gm=
ail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 02/18/2021 10:16 PM, Xiang Ma wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Are there any python code for this? I am using the
        python interface.</div>
    </blockquote>
    You&#39;ll have to kind of infer what to do from the C++ example--there
    is no Python version of that example.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 18, 2021 at 7:44
          PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" =
target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"auto">Well there=E2=80=99s the rx_multi_samples examp=
le that
            is part of the UHD source tree.=C2=A0<br>
            <br>
            <div dir=3D"ltr">Sent from my iPhone</div>
            <div dir=3D"ltr"><br>
              <blockquote type=3D"cite">On Feb 18, 2021, at 9:32 PM, Xiang
                Ma &lt;<a href=3D"mailto:marxwolfs@gmail.com" target=3D"_bl=
ank">marxwolfs@gmail.com</a>&gt;
                wrote:<br>
                <br>
              </blockquote>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">=EF=BB=BF
                <div dir=3D"ltr">=C2=A0 Do you have any example code? I am
                  still confused.
                  <div><br>
                  </div>
                  <div>Thank you.</div>
                </div>
                <br>
                <div class=3D"gmail_quote">
                  <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 18, 202=
1
                    at 5:50 PM Marcus D Leech &lt;<a href=3D"mailto:patchvo=
nbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
                    wrote:<br>
                  </div>
                  <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                    <div dir=3D"auto">Just create a 2-channel USRP source
                      and specify a subdev of =E2=80=9CA:0 B:0=E2=80=9D.=C2=
=A0
                      <div><br>
                      </div>
                      <div><br>
                        <br>
                        <div dir=3D"ltr">Sent from my iPhone</div>
                        <div dir=3D"ltr"><br>
                          <blockquote type=3D"cite">On Feb 18, 2021, at
                            7:38 PM, Xiang Ma via USRP-users &lt;<a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettu=
s.com</a>&gt;
                            wrote:<br>
                            <br>
                          </blockquote>
                        </div>
                        <blockquote type=3D"cite">
                          <div dir=3D"ltr">=EF=BB=BF
                            <div dir=3D"ltr">Hi,
                              <div><br>
                              </div>
                              <div>=C2=A0 =C2=A0 I am using a x310 USRP wit=
h two
                                UBX daughterboards. Now I can transmit
                                and receive the signal in RF A
                                daughterboard with command</div>
                              <div>=C2=A0 =C2=A0=C2=A0self.source.set_anten=
na(&quot;RX2&quot;, 0)</div>
                              <div>=C2=A0 =C2=A0 self.sink.set_antenna(&quo=
t;TX/RX&quot;,
                                0).</div>
                              <div><br>
                              </div>
                              <div>=C2=A0 =C2=A0 Now, I want to transmit th=
e
                                signal in RF A, and receive the signal
                                in both RF A and RF B. It is actually 1
                                transmitter and 2 receivers. How can I
                                implement this? I checked the
                                set_subdev_subdev(&quot;B&quot;, 1), but it
                                doesn&#39;t work.</div>
                              <div><br>
                              </div>
                              <div>Thank you,</div>
                              <div><br>
                              </div>
                              <div><br>
                              </div>
                              <div><br clear=3D"all">
                                <div><br>
                                </div>
                                -- <br>
                                <div dir=3D"ltr">
                                  <div dir=3D"ltr"><font style=3D"color:rgb=
(136,136,136)" face=3D"times new roman, serif" size=3D"4"><i><b>Xiang Ma,=
=C2=A0</b></i></font><span style=3D"color:rgb(136,136,136)">Ph.D.
                                      Student</span>
                                    <div>
                                      <div style=3D"color:rgb(136,136,136)"=
><font color=3D"#444444">College of
                                          Engineering</font></div>
                                      <div><font color=3D"#444444">Utah
                                          State University</font></div>
                                      <div style=3D"color:rgb(136,136,136)"=
><font color=3D"#444444">E-mail:<a href=3D"mailto:marxwolfs@gmail.com" styl=
e=3D"color:rgb(17,85,204)" target=3D"_blank">marxwolfs@gmail.com</a></font>=
</div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <span>_________________________________________=
______</span><br>
                            <span>USRP-users mailing list</span><br>
                            <span><a href=3D"mailto:USRP-users@lists.ettus.=
com" target=3D"_blank">USRP-users@lists.ettus.com</a></span><br>
                            <span><a href=3D"http://lists.ettus.com/mailman=
/listinfo/usrp-users_lists.ettus.com" target=3D"_blank">http://lists.ettus.=
com/mailman/listinfo/usrp-users_lists.ettus.com</a></span><br>
                          </div>
                        </blockquote>
                      </div>
                    </div>
                  </blockquote>
                </div>
                <br clear=3D"all">
                <div><br>
                </div>
                -- <br>
                <div dir=3D"ltr">
                  <div dir=3D"ltr"><font style=3D"color:rgb(136,136,136)" f=
ace=3D"times new roman, serif" size=3D"4"><i><b>Xiang
                          Ma,=C2=A0</b></i></font><span style=3D"color:rgb(=
136,136,136)">Ph.D. Student</span>
                    <div>
                      <div style=3D"color:rgb(136,136,136)"><font color=3D"=
#444444">College of Engineering</font></div>
                      <div><font color=3D"#444444">Utah State University</f=
ont></div>
                      <div style=3D"color:rgb(136,136,136)"><font color=3D"=
#444444">E-mail:<a href=3D"mailto:marxwolfs@gmail.com" style=3D"color:rgb(1=
7,85,204)" target=3D"_blank">marxwolfs@gmail.com</a></font></div>
                    </div>
                  </div>
                </div>
              </div>
            </blockquote>
          </div>
        </blockquote>
      </div>
      <br clear=3D"all">
      <div><br>
      </div>
      -- <br>
      <div dir=3D"ltr">
        <div dir=3D"ltr"><font style=3D"color:rgb(136,136,136)" face=3D"tim=
es
            new roman, serif" size=3D"4"><i><b>Xiang Ma,=C2=A0</b></i></fon=
t><span style=3D"color:rgb(136,136,136)">Ph.D. Student</span>
          <div>
            <div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">C=
ollege
                of Engineering</font></div>
            <div><font color=3D"#444444">Utah State University</font></div>
            <div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">E=
-mail:<a href=3D"mailto:marxwolfs@gmail.com" style=3D"color:rgb(17,85,204)"=
 target=3D"_blank">marxwolfs@gmail.com</a></font></div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><font face=3D"times new roman, =
serif" size=3D"4" style=3D"color:rgb(136,136,136)"><i><b>Xiang Ma,=C2=A0</b=
></i></font><span style=3D"color:rgb(136,136,136)">Ph.D. Student</span><div=
><div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">College of E=
ngineering</font></div><div><font color=3D"#444444">Utah State University</=
font></div><div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">E-=
mail:<a href=3D"mailto:marxwolfs@gmail.com" style=3D"color:rgb(17,85,204)" =
target=3D"_blank">marxwolfs@gmail.com</a></font></div></div></div></div>

--000000000000843f5005bba9269d--


--===============2392817280145708671==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2392817280145708671==--

